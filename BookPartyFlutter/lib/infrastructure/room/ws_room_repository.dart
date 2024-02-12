import 'dart:async';

import 'package:bookparty/domain/auth/i_auth_facade.dart';
import 'package:bookparty/domain/room/i_room_repository.dart';
import 'package:bookparty/domain/room/room.dart';
import 'package:bookparty/domain/room/room_failure.dart';
import 'package:bookparty/domain/room/room_user.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/infrastructure/room/room_dto.dart';
import 'package:bookparty/infrastructure/room/room_user_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

class StreamSocket {
  final _socketResponse = StreamController<Room>();

  void Function(Room) get addResponse => _socketResponse.sink.add;

  Stream<Room> get getResponse => _socketResponse.stream;

  void dispose() {
    _socketResponse.close();
  }
}

@LazySingleton(as: IRoomRepository)
class WebSocketRoomRepository implements IRoomRepository {
  final IAuthFacade _authFacade;
  late StreamSocket streamSocket;

  io.Socket socket = io.io('wt://192.168.0.113:5000', <String, dynamic>{
    'autoConnect': false,
    'transports': ['websocket'],
  });

  WebSocketRoomRepository(this._authFacade) {
    print('Web socket intialzed');
  }

  bool _connectToSocket() {
    try {
      socket.open();
      socket.connect();
      socket.onConnect((data) => print('Connected to Socket'));
      streamSocket = StreamSocket();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<RoomFailure, Stream<Room>>> createRoom(Book book) async {
    if (!socket.connected) {
      if (!_connectToSocket()) {
        return left(const RoomFailure.notConectedToServer());
      }
    }

    final optionUser = await _authFacade.getSignedInUser();
    final user = optionUser.getOrElse(() => throw Exception);

    final room = Room(
      roomID: 0000,
      book: book,
      users: [
        RoomUser(
          name: user.name,
          id: user.id,
          isLeader: true,
          isReady: false,
        )
      ],
      hasStarted: false,
      pageNumber: 0,
    );

    socket.emit('create', RoomDto.fromDomain(room).toJson());

    socket.on('roominfo', (info) {
      Room room = RoomDto.fromJson(info).toDomain();
      streamSocket.addResponse(room);
    });

    return right(streamSocket.getResponse);
  }

  @override
  Future<Either<RoomFailure, Stream<Room>>> joinRoom(int roomID) async {
    if (!socket.connected) {
      if (!_connectToSocket()) {
        return left(const RoomFailure.notConectedToServer());
      }
    }

    final optionUser = await _authFacade.getSignedInUser();
    final user = optionUser.getOrElse(() => throw Exception);

    var room = Room(
      roomID: roomID,
      book: Book.empty(),
      users: [
        RoomUser(name: user.name, id: user.id, isLeader: false, isReady: false),
      ],
      hasStarted: false,
      pageNumber: 0,
    );

    socket.emit('join', RoomDto.fromDomain(room).toJson());

    socket.on('roominfo', (info) {
      Room room = RoomDto.fromJson(info).toDomain();
      streamSocket.addResponse(room);
    });
    return right(streamSocket.getResponse);
  }

  @override
  Future<Either<RoomFailure, Unit>> ready(RoomUserDto roomUser) async {
    var updatedUser = roomUser.copyWith(isReady: !roomUser.isReady).toJson();

    socket.emit('updateUserState', updatedUser);
    return right(unit);
  }

  @override
  Future<Either<RoomFailure, Unit>> leaveRoom() async {
    streamSocket.dispose();
    print(streamSocket._socketResponse.isClosed);
    print('stream should be closed');
    socket.disconnect();
    socket.close();
    return right(unit);
  }
}
