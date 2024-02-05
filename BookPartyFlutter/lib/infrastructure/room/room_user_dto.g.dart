// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomUserDtoImpl _$$RoomUserDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomUserDtoImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      isReady: json['isReady'] as bool,
      isLeader: json['isLeader'] as bool,
    );

Map<String, dynamic> _$$RoomUserDtoImplToJson(_$RoomUserDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'isReady': instance.isReady,
      'isLeader': instance.isLeader,
    };
