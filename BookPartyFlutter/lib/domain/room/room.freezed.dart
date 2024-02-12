// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Room {
  bool get hasStarted => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get roomID => throw _privateConstructorUsedError;
  Book get book => throw _privateConstructorUsedError;
  List<RoomUser> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {bool hasStarted,
      int pageNumber,
      int roomID,
      Book book,
      List<RoomUser> users});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarted = null,
    Object? pageNumber = null,
    Object? roomID = null,
    Object? book = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      hasStarted: null == hasStarted
          ? _value.hasStarted
          : hasStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      roomID: null == roomID
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as int,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<RoomUser>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
          _$RoomImpl value, $Res Function(_$RoomImpl) then) =
      __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasStarted,
      int pageNumber,
      int roomID,
      Book book,
      List<RoomUser> users});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasStarted = null,
    Object? pageNumber = null,
    Object? roomID = null,
    Object? book = null,
    Object? users = null,
  }) {
    return _then(_$RoomImpl(
      hasStarted: null == hasStarted
          ? _value.hasStarted
          : hasStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      roomID: null == roomID
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as int,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<RoomUser>,
    ));
  }
}

/// @nodoc

class _$RoomImpl implements _Room {
  _$RoomImpl(
      {required this.hasStarted,
      required this.pageNumber,
      required this.roomID,
      required this.book,
      required final List<RoomUser> users})
      : _users = users;

  @override
  final bool hasStarted;
  @override
  final int pageNumber;
  @override
  final int roomID;
  @override
  final Book book;
  final List<RoomUser> _users;
  @override
  List<RoomUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'Room(hasStarted: $hasStarted, pageNumber: $pageNumber, roomID: $roomID, book: $book, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.hasStarted, hasStarted) ||
                other.hasStarted == hasStarted) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.roomID, roomID) || other.roomID == roomID) &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasStarted, pageNumber, roomID,
      book, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);
}

abstract class _Room implements Room {
  factory _Room(
      {required final bool hasStarted,
      required final int pageNumber,
      required final int roomID,
      required final Book book,
      required final List<RoomUser> users}) = _$RoomImpl;

  @override
  bool get hasStarted;
  @override
  int get pageNumber;
  @override
  int get roomID;
  @override
  Book get book;
  @override
  List<RoomUser> get users;
  @override
  @JsonKey(ignore: true)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
