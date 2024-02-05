import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bookparty/domain/auth/i_auth_facade.dart';
import 'package:bookparty/domain/room/i_room_repository.dart';
import 'package:bookparty/infrastructure/room/room_dto.dart';
import 'package:bookparty/infrastructure/room/room_user_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:bookparty/domain/room/room.dart';
import 'package:bookparty/domain/room/room_failure.dart';
import 'package:fpdart/fpdart.dart';

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
  final StreamSocket streamSocket = StreamSocket();

  IO.Socket socket = IO.io('wt://192.168.0.113:8080', <String, dynamic>{
    'autoConnect': false,
    'transports': ['websocket'],
  });

  WebSocketRoomRepository(this._authFacade) {
    print('Web socket intialzed');
    socket.connect();
    socket.onConnect((_) {
      print('connected to socket');
    });
  }

  @override
  Future<Either<RoomFailure, Stream<Room>>> createRoom() async {
    final optionUser = await _authFacade.getSignedInUser();
    final user = optionUser.getOrElse(() => throw Exception);

    var roomData = {
      'user': {
        'name': user.name,
        'id': user.id.getOrCrash(),
        'isLeader': true,
        'isReady': false,
      }
    };

    socket.emit('create', roomData);

    socket.on('roominfo', (info) {
      Room room = RoomDto.fromJson(info).toDomain();
      streamSocket.addResponse(room);
    });
    return right(streamSocket.getResponse);
  }

  @override
  Future<Either<RoomFailure, Stream<Room>>> joinRoom(int roomID) async {
    final optionUser = await _authFacade.getSignedInUser();
    final user = optionUser.getOrElse(() => throw Exception);

    var roomData = {
      'roomID': roomID,
      'user': {
        'name': user.name,
        'id': user.id.getOrCrash(),
        'isleader': true,
        'isready': false,
      }
    };

    socket.emit('join', roomData);

    socket.on('roominfo', (info) {
      Room room = RoomDto.fromJson(info).toDomain();
      streamSocket.addResponse(room);
    });
    return right(streamSocket.getResponse);
  }

  @override
  Future<Either<RoomFailure, Unit>> ready(RoomUserDto roomUser) async {
    var updatedUser = roomUser.copyWith(isReady: !roomUser.isReady).toJson();

    socket.emit('update', updatedUser);

    socket.once('onUpdate', (info) {
      Room room = RoomDto.fromJson(info).toDomain();
      streamSocket.addResponse(room);
    });
    return right(unit);
  }
}
