import 'package:bookparty/domain/room/room.dart';
import 'package:bookparty/domain/room/room_failure.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/infrastructure/room/room_user_dto.dart';
import 'package:fpdart/fpdart.dart';

abstract class IRoomRepository {
  Future<Either<RoomFailure, Stream<Room>>> createRoom(Book book);
  Future<Either<RoomFailure, Stream<Room>>> joinRoom(int roomID);
  Future<Either<RoomFailure, Unit>> ready(RoomUserDto roomUser);
  Future<Either<RoomFailure, Unit>> leaveRoom();
}
