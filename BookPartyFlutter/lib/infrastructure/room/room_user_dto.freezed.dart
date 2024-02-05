// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomUserDto _$RoomUserDtoFromJson(Map<String, dynamic> json) {
  return _RoomUserDto.fromJson(json);
}

/// @nodoc
mixin _$RoomUserDto {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  bool get isReady => throw _privateConstructorUsedError;
  bool get isLeader => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomUserDtoCopyWith<RoomUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomUserDtoCopyWith<$Res> {
  factory $RoomUserDtoCopyWith(
          RoomUserDto value, $Res Function(RoomUserDto) then) =
      _$RoomUserDtoCopyWithImpl<$Res, RoomUserDto>;
  @useResult
  $Res call({String name, String id, bool isReady, bool isLeader});
}

/// @nodoc
class _$RoomUserDtoCopyWithImpl<$Res, $Val extends RoomUserDto>
    implements $RoomUserDtoCopyWith<$Res> {
  _$RoomUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? isReady = null,
    Object? isLeader = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeader: null == isLeader
          ? _value.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomUserDtoImplCopyWith<$Res>
    implements $RoomUserDtoCopyWith<$Res> {
  factory _$$RoomUserDtoImplCopyWith(
          _$RoomUserDtoImpl value, $Res Function(_$RoomUserDtoImpl) then) =
      __$$RoomUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, bool isReady, bool isLeader});
}

/// @nodoc
class __$$RoomUserDtoImplCopyWithImpl<$Res>
    extends _$RoomUserDtoCopyWithImpl<$Res, _$RoomUserDtoImpl>
    implements _$$RoomUserDtoImplCopyWith<$Res> {
  __$$RoomUserDtoImplCopyWithImpl(
      _$RoomUserDtoImpl _value, $Res Function(_$RoomUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? isReady = null,
    Object? isLeader = null,
  }) {
    return _then(_$RoomUserDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
      isLeader: null == isLeader
          ? _value.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomUserDtoImpl extends _RoomUserDto {
  _$RoomUserDtoImpl(
      {required this.name,
      required this.id,
      required this.isReady,
      required this.isLeader})
      : super._();

  factory _$RoomUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomUserDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final bool isReady;
  @override
  final bool isLeader;

  @override
  String toString() {
    return 'RoomUserDto(name: $name, id: $id, isReady: $isReady, isLeader: $isLeader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomUserDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isReady, isReady) || other.isReady == isReady) &&
            (identical(other.isLeader, isLeader) ||
                other.isLeader == isLeader));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, isReady, isLeader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomUserDtoImplCopyWith<_$RoomUserDtoImpl> get copyWith =>
      __$$RoomUserDtoImplCopyWithImpl<_$RoomUserDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomUserDtoImplToJson(
      this,
    );
  }
}

abstract class _RoomUserDto extends RoomUserDto {
  factory _RoomUserDto(
      {required final String name,
      required final String id,
      required final bool isReady,
      required final bool isLeader}) = _$RoomUserDtoImpl;
  _RoomUserDto._() : super._();

  factory _RoomUserDto.fromJson(Map<String, dynamic> json) =
      _$RoomUserDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  bool get isReady;
  @override
  bool get isLeader;
  @override
  @JsonKey(ignore: true)
  _$$RoomUserDtoImplCopyWith<_$RoomUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
