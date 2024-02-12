import 'package:bookparty/domain/room/room_user.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
abstract class Room with _$Room {
  factory Room({
    required bool hasStarted,
    required int pageNumber,
    required int roomID,
    required Book book,
    required List<RoomUser> users,
  }) = _Room;
}
