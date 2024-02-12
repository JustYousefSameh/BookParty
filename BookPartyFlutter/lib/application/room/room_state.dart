part of 'room_bloc.dart';

@freezed
sealed class RoomState with _$RoomState {
  const factory RoomState.initial() = RoomStateInitial;
  const factory RoomState.roomJoined(Room room) = RoomJoined;
  const factory RoomState.roomStarted(Room room) = RoomStarted;
}
