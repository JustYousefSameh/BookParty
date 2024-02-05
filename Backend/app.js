const { log } = require("console");
const { json } = require("express");
const { runInThisContext } = require("vm");

const httpServer = require("http").createServer();
const io = require("socket.io")(httpServer, {
  cors: { origin: "*" },
});

io.rooms = {};
io.on("connection", (socket) => {
  console.log("User connected");

  socket.on("create", (roomToCreate) => {
    let roominfo = roomToCreate;
    let roomID = Math.floor(Math.random() * 9000 + 1000);

    console.log(`${roominfo["user"]["name"]} Created room ${roomID}`);

    io["rooms"][roomID] = {
      users: [roominfo["user"]],
      sockets: [socket],
    };

    console.log(io["rooms"][roomID]["users"]);

    socket.emit("roominfo", {
      roomID: roomID,
      users: io["rooms"][roomID]["users"],
    });
    //Send data to user
    socket.room = roomID;
    socket.userID = roominfo["user"]["id"];
  });

  //JOINING
  socket.on("join", (roomToJoin) => {
    let roomID = roomToJoin["roomID"];

    if (io["rooms"][roomID] !== undefined) {
      console.log(`User ${roomToJoin["user"]} joined room ${roomID}`);

      io["rooms"][roomID]["users"].push(roomToJoin["user"]);
      io["rooms"][roomID]["sockets"].push(socket);

      socket.room = roomID;
      socket.userID = roomToJoin["user"]["id"];

      //Send data to all Users
      io.notifyRoomMembers(io["rooms"][roomID], roomID);
      console.log({
        roomID: roomID,
        users: io["rooms"][roomID]["users"],
      });
    }
  });

  socket.on("update", (updatedData) => {
    let roomID = socket.room;
    let currentUser = io.rooms[roomID]["users"].find(
      (value) => value["id"] == socket.userID
    );
    let currentUserIndex = io.rooms[roomID]["users"].indexOf(currentUser);

    io.rooms[roomID]["users"][currentUserIndex] = updatedData;
    io.notifyRoomMembers(io["rooms"][roomID], roomID);
  });
});

io.notifyRoomMembers = function (roomData, roomID) {
  roomData["sockets"].forEach((userScoket) =>
    userScoket.emit("roominfo", {
      roomID: roomID,
      users: roomData["users"],
    })
  );
};

httpServer.listen(8080, () => console.log("Listening on Port:8080"));
