// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomDto _$RoomDtoFromJson(Map<String, dynamic> json) {
  return _RoomDto.fromJson(json);
}

/// @nodoc
mixin _$RoomDto {
  int get roomID => throw _privateConstructorUsedError;
  List<RoomUserDto> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDtoCopyWith<RoomDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDtoCopyWith<$Res> {
  factory $RoomDtoCopyWith(RoomDto value, $Res Function(RoomDto) then) =
      _$RoomDtoCopyWithImpl<$Res, RoomDto>;
  @useResult
  $Res call({int roomID, List<RoomUserDto> users});
}

/// @nodoc
class _$RoomDtoCopyWithImpl<$Res, $Val extends RoomDto>
    implements $RoomDtoCopyWith<$Res> {
  _$RoomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomID = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      roomID: null == roomID
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<RoomUserDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDtoImplCopyWith<$Res> implements $RoomDtoCopyWith<$Res> {
  factory _$$RoomDtoImplCopyWith(
          _$RoomDtoImpl value, $Res Function(_$RoomDtoImpl) then) =
      __$$RoomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int roomID, List<RoomUserDto> users});
}

/// @nodoc
class __$$RoomDtoImplCopyWithImpl<$Res>
    extends _$RoomDtoCopyWithImpl<$Res, _$RoomDtoImpl>
    implements _$$RoomDtoImplCopyWith<$Res> {
  __$$RoomDtoImplCopyWithImpl(
      _$RoomDtoImpl _value, $Res Function(_$RoomDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomID = null,
    Object? users = null,
  }) {
    return _then(_$RoomDtoImpl(
      roomID: null == roomID
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<RoomUserDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDtoImpl extends _RoomDto {
  _$RoomDtoImpl({required this.roomID, required final List<RoomUserDto> users})
      : _users = users,
        super._();

  factory _$RoomDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDtoImplFromJson(json);

  @override
  final int roomID;
  final List<RoomUserDto> _users;
  @override
  List<RoomUserDto> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'RoomDto(roomID: $roomID, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDtoImpl &&
            (identical(other.roomID, roomID) || other.roomID == roomID) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, roomID, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDtoImplCopyWith<_$RoomDtoImpl> get copyWith =>
      __$$RoomDtoImplCopyWithImpl<_$RoomDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDtoImplToJson(
      this,
    );
  }
}

abstract class _RoomDto extends RoomDto {
  factory _RoomDto(
      {required final int roomID,
      required final List<RoomUserDto> users}) = _$RoomDtoImpl;
  _RoomDto._() : super._();

  factory _RoomDto.fromJson(Map<String, dynamic> json) = _$RoomDtoImpl.fromJson;

  @override
  int get roomID;
  @override
  List<RoomUserDto> get users;
  @override
  @JsonKey(ignore: true)
  _$$RoomDtoImplCopyWith<_$RoomDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
