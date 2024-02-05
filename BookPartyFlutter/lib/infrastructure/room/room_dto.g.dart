// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDtoImpl _$$RoomDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomDtoImpl(
      roomID: json['roomID'] as int,
      users: (json['users'] as List<dynamic>)
          .map((e) => RoomUserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RoomDtoImplToJson(_$RoomDtoImpl instance) =>
    <String, dynamic>{
      'roomID': instance.roomID,
      'users': instance.users,
    };
