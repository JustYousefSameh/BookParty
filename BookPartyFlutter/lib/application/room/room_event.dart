part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.createRoom(Book book) = CreateRoom;
  const factory RoomEvent.joinRoom(int roomID) = JoinRoom;
  const factory RoomEvent.ready() = Ready;
  const factory RoomEvent.leaveRoom() = LeaveRoom;
}
