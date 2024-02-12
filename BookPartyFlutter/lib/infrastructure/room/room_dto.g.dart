// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDtoImpl _$$RoomDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomDtoImpl(
      hasStarted: json['hasStarted'] as bool,
      pageNumber: json['pageNumber'] as int,
      roomID: json['roomID'] as int,
      users: (json['users'] as List<dynamic>)
          .map((e) => RoomUserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      book: Book.fromJson(json['book']),
    );

Map<String, dynamic> _$$RoomDtoImplToJson(_$RoomDtoImpl instance) =>
    <String, dynamic>{
      'hasStarted': instance.hasStarted,
      'pageNumber': instance.pageNumber,
      'roomID': instance.roomID,
      'users': instance.users,
      'book': instance.book,
    };
