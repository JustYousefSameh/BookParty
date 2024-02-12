const httpServer = require("http").createServer();
const io = require("socket.io")(httpServer, {
  cors: { origin: "*" },
});

io.rooms = {
  "0000": {
    data: {
      roomID: 0o0,
      roomStarted: false,
      pageNumber: 0,
      users: [],
      book: {},
    },
    sockets: [],
  },
};

httpServer.listen(5000, () => console.log("Listening on Port:5000"));

io.on("connection", (socket) => {
  console.log("User connected");

  socket.on("create", (roomToCreate) => {
    let roomID = Math.floor(Math.random() * 9000 + 1000);
    io["rooms"][roomID] = {};
    let serverSideRoomData = io["rooms"][roomID];

    console.log(`${roomToCreate["users"][0]["name"]} Created room ${roomID}`);

    //Set roomID
    roomToCreate["roomID"] = roomID;

    serverSideRoomData["data"] = roomToCreate;
    serverSideRoomData["sockets"] = [socket];

    console.log(io["rooms"][roomID]["data"]);

    //Send data to user
    socket.emit("roominfo", serverSideRoomData["data"]);

    socket.room = roomID;
    socket.userID = roomToCreate["users"][0]["id"];
  });

  //JOINING
  socket.on("join", (roomToJoin) => {
    let roomID = roomToJoin["roomID"];
    let serverSideRoomData = io["rooms"][roomID];

    if (serverSideRoomData !== undefined) {
      console.log(
        `User ${roomToJoin["users"][0]["name"]} joined room ${roomID}`
      );

      serverSideRoomData["data"]["users"].push(roomToJoin["users"][0]);
      serverSideRoomData["sockets"].push(socket);

      socket.room = roomID;
      socket.userID = roomToJoin["users"][0]["id"];

      //Send data to all Users
      io.notifyRoomMembers(serverSideRoomData);
      console.log(serverSideRoomData["data"]);
    }
  });

  socket.on("updateUserState", (updatedData) => {
    let roomID = socket.room;
    let serverSideRoomData = io["rooms"][roomID];

    let currentUser = serverSideRoomData["data"]["users"].find(
      (value) => value["id"] == socket.userID
    );
    let currentUserIndex =
      serverSideRoomData["data"]["users"].indexOf(currentUser);

    serverSideRoomData["data"]["users"][currentUserIndex] = updatedData;
    if (io.checkIfAllReady(roomID)) {
      serverSideRoomData["data"]["hasStarted"] = true;
    }
    io.notifyRoomMembers(serverSideRoomData);
  });

  socket.on("disconnect", (reason) => {
    console.log(`User disconnected ${reason}`);
  });
});

io.notifyRoomMembers = function (roomData) {
  roomData["sockets"].forEach((userScoket) =>
    userScoket.emit("roominfo", roomData["data"])
  );
};

io.checkIfAllReady = function (roomID) {
  let isAllReady = true;
  io["rooms"][roomID]["data"]["users"].forEach((element) => {
    if (element["isReady"] == false) {
      isAllReady = false;
    }
  });

  return isAllReady;
};
