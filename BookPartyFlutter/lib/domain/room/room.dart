import 'package:bookparty/domain/room/room_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';

@freezed
abstract class Room with _$Room {
  factory Room({
    required int roomID,
    required List<RoomUser> users,
  }) = _Room;
}
