import 'package:bookparty/domain/room/room.dart';
import 'package:bookparty/infrastructure/auth/user_dto.dart';
import 'package:bookparty/infrastructure/room/room_user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_dto.freezed.dart';
part 'room_dto.g.dart';

@freezed
abstract class RoomDto implements _$RoomDto {
  const RoomDto._();

  factory RoomDto({
    required int roomID,
    required List<RoomUserDto> users,
  }) = _RoomDto;

  factory RoomDto.fromDomain(Room room) {
    return RoomDto(
        roomID: room.roomID,
        users: room.users.map((e) => RoomUserDto.fromDomain(e)).toList());
  }

  Room toDomain() {
    return Room(
      roomID: roomID,
      users: users.map((e) => e.toDomain()).toList(),
    );
  }

  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);
}
