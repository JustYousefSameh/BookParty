// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomUser {
  String get name => throw _privateConstructorUsedError;
  UniqueId get id => throw _privateConstructorUsedError;
  bool get isLeader => throw _privateConstructorUsedError;
  bool get isReady => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomUserCopyWith<RoomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomUserCopyWith<$Res> {
  factory $RoomUserCopyWith(RoomUser value, $Res Function(RoomUser) then) =
      _$RoomUserCopyWithImpl<$Res, RoomUser>;
  @useResult
  $Res call({String name, UniqueId id, bool isLeader, bool isReady});
}

/// @nodoc
class _$RoomUserCopyWithImpl<$Res, $Val extends RoomUser>
    implements $RoomUserCopyWith<$Res> {
  _$RoomUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? isLeader = null,
    Object? isReady = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isLeader: null == isLeader
          ? _value.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomUserImplCopyWith<$Res>
    implements $RoomUserCopyWith<$Res> {
  factory _$$RoomUserImplCopyWith(
          _$RoomUserImpl value, $Res Function(_$RoomUserImpl) then) =
      __$$RoomUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, UniqueId id, bool isLeader, bool isReady});
}

/// @nodoc
class __$$RoomUserImplCopyWithImpl<$Res>
    extends _$RoomUserCopyWithImpl<$Res, _$RoomUserImpl>
    implements _$$RoomUserImplCopyWith<$Res> {
  __$$RoomUserImplCopyWithImpl(
      _$RoomUserImpl _value, $Res Function(_$RoomUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? isLeader = null,
    Object? isReady = null,
  }) {
    return _then(_$RoomUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      isLeader: null == isLeader
          ? _value.isLeader
          : isLeader // ignore: cast_nullable_to_non_nullable
              as bool,
      isReady: null == isReady
          ? _value.isReady
          : isReady // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RoomUserImpl implements _RoomUser {
  _$RoomUserImpl(
      {required this.name,
      required this.id,
      required this.isLeader,
      required this.isReady});

  @override
  final String name;
  @override
  final UniqueId id;
  @override
  final bool isLeader;
  @override
  final bool isReady;

  @override
  String toString() {
    return 'RoomUser(name: $name, id: $id, isLeader: $isLeader, isReady: $isReady)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLeader, isLeader) ||
                other.isLeader == isLeader) &&
            (identical(other.isReady, isReady) || other.isReady == isReady));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, id, isLeader, isReady);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomUserImplCopyWith<_$RoomUserImpl> get copyWith =>
      __$$RoomUserImplCopyWithImpl<_$RoomUserImpl>(this, _$identity);
}

abstract class _RoomUser implements RoomUser {
  factory _RoomUser(
      {required final String name,
      required final UniqueId id,
      required final bool isLeader,
      required final bool isReady}) = _$RoomUserImpl;

  @override
  String get name;
  @override
  UniqueId get id;
  @override
  bool get isLeader;
  @override
  bool get isReady;
  @override
  @JsonKey(ignore: true)
  _$$RoomUserImplCopyWith<_$RoomUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
