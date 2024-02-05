import 'package:bookparty/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_user.freezed.dart';

@freezed
abstract class RoomUser with _$RoomUser {
  factory RoomUser({
    required String name,
    required UniqueId id,
    required bool isLeader,
    required bool isReady,
  }) = _RoomUser;
}
