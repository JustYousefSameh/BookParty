import 'package:bookparty/domain/core/value_objects.dart';
import 'package:bookparty/domain/room/room_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_user_dto.freezed.dart';
part 'room_user_dto.g.dart';

@freezed
abstract class RoomUserDto implements _$RoomUserDto {
  const RoomUserDto._();

  factory RoomUserDto({
    required String name,
    required String id,
    required bool isReady,
    required bool isLeader,
  }) = _RoomUserDto;

  factory RoomUserDto.fromDomain(RoomUser roomUser) {
    return RoomUserDto(
      name: roomUser.name,
      id: roomUser.id.getOrCrash(),
      isReady: roomUser.isReady,
      isLeader: roomUser.isLeader,
    );
  }

  RoomUser toDomain() {
    return RoomUser(
      name: name,
      id: UniqueId.fromUniqueString(id),
      isLeader: isLeader,
      isReady: isReady,
    );
  }

  factory RoomUserDto.fromJson(Map<String, dynamic> json) =>
      _$RoomUserDtoFromJson(json);
}
