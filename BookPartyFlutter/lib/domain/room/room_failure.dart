import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_failure.freezed.dart';

@freezed
sealed class RoomFailure with _$RoomFailure {
  const factory RoomFailure.roomNotFound() = RoomNotFound;
  const factory RoomFailure.roomNotCreated() = RoomNotCreated;
  const factory RoomFailure.notConectedToServer() = NotConectedToServer;
}
