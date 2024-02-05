part of 'room_bloc.dart';


@freezed

class RoomEvent with _$RoomEvent {

  const factory RoomEvent.createRoom() = CreateRoom;


  const factory RoomEvent.joinRoom(int roomID) = JoinRoom;

  const factory RoomEvent.ready() = Ready;

}

