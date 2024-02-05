part of 'room_bloc.dart';


@freezed

sealed class RoomState with _$RoomState {

  const factory RoomState.initial() = Initial;


  // const factory RoomState.roomCreated(Stream<Room> room) = RoomCreated;


  const factory RoomState.roomJoined(Room room) = RoomJoined;

}

