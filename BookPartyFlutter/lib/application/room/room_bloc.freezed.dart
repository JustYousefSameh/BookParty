// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RoomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) createRoom,
    required TResult Function(int roomID) joinRoom,
    required TResult Function() ready,
    required TResult Function() leaveRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? createRoom,
    TResult? Function(int roomID)? joinRoom,
    TResult? Function()? ready,
    TResult? Function()? leaveRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? createRoom,
    TResult Function(int roomID)? joinRoom,
    TResult Function()? ready,
    TResult Function()? leaveRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRoom value) createRoom,
    required TResult Function(JoinRoom value) joinRoom,
    required TResult Function(Ready value) ready,
    required TResult Function(LeaveRoom value) leaveRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRoom value)? createRoom,
    TResult? Function(JoinRoom value)? joinRoom,
    TResult? Function(Ready value)? ready,
    TResult? Function(LeaveRoom value)? leaveRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRoom value)? createRoom,
    TResult Function(JoinRoom value)? joinRoom,
    TResult Function(Ready value)? ready,
    TResult Function(LeaveRoom value)? leaveRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomEventCopyWith<$Res> {
  factory $RoomEventCopyWith(RoomEvent value, $Res Function(RoomEvent) then) =
      _$RoomEventCopyWithImpl<$Res, RoomEvent>;
}

/// @nodoc
class _$RoomEventCopyWithImpl<$Res, $Val extends RoomEvent>
    implements $RoomEventCopyWith<$Res> {
  _$RoomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateRoomImplCopyWith<$Res> {
  factory _$$CreateRoomImplCopyWith(
          _$CreateRoomImpl value, $Res Function(_$CreateRoomImpl) then) =
      __$$CreateRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$CreateRoomImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$CreateRoomImpl>
    implements _$$CreateRoomImplCopyWith<$Res> {
  __$$CreateRoomImplCopyWithImpl(
      _$CreateRoomImpl _value, $Res Function(_$CreateRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? book = null,
  }) {
    return _then(_$CreateRoomImpl(
      null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc

class _$CreateRoomImpl with DiagnosticableTreeMixin implements CreateRoom {
  const _$CreateRoomImpl(this.book);

  @override
  final Book book;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomEvent.createRoom(book: $book)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomEvent.createRoom'))
      ..add(DiagnosticsProperty('book', book));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateRoomImpl &&
            (identical(other.book, book) || other.book == book));
  }

  @override
  int get hashCode => Object.hash(runtimeType, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateRoomImplCopyWith<_$CreateRoomImpl> get copyWith =>
      __$$CreateRoomImplCopyWithImpl<_$CreateRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) createRoom,
    required TResult Function(int roomID) joinRoom,
    required TResult Function() ready,
    required TResult Function() leaveRoom,
  }) {
    return createRoom(book);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? createRoom,
    TResult? Function(int roomID)? joinRoom,
    TResult? Function()? ready,
    TResult? Function()? leaveRoom,
  }) {
    return createRoom?.call(book);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? createRoom,
    TResult Function(int roomID)? joinRoom,
    TResult Function()? ready,
    TResult Function()? leaveRoom,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(book);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRoom value) createRoom,
    required TResult Function(JoinRoom value) joinRoom,
    required TResult Function(Ready value) ready,
    required TResult Function(LeaveRoom value) leaveRoom,
  }) {
    return createRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRoom value)? createRoom,
    TResult? Function(JoinRoom value)? joinRoom,
    TResult? Function(Ready value)? ready,
    TResult? Function(LeaveRoom value)? leaveRoom,
  }) {
    return createRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRoom value)? createRoom,
    TResult Function(JoinRoom value)? joinRoom,
    TResult Function(Ready value)? ready,
    TResult Function(LeaveRoom value)? leaveRoom,
    required TResult orElse(),
  }) {
    if (createRoom != null) {
      return createRoom(this);
    }
    return orElse();
  }
}

abstract class CreateRoom implements RoomEvent {
  const factory CreateRoom(final Book book) = _$CreateRoomImpl;

  Book get book;
  @JsonKey(ignore: true)
  _$$CreateRoomImplCopyWith<_$CreateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinRoomImplCopyWith<$Res> {
  factory _$$JoinRoomImplCopyWith(
          _$JoinRoomImpl value, $Res Function(_$JoinRoomImpl) then) =
      __$$JoinRoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int roomID});
}

/// @nodoc
class __$$JoinRoomImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$JoinRoomImpl>
    implements _$$JoinRoomImplCopyWith<$Res> {
  __$$JoinRoomImplCopyWithImpl(
      _$JoinRoomImpl _value, $Res Function(_$JoinRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomID = null,
  }) {
    return _then(_$JoinRoomImpl(
      null == roomID
          ? _value.roomID
          : roomID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$JoinRoomImpl with DiagnosticableTreeMixin implements JoinRoom {
  const _$JoinRoomImpl(this.roomID);

  @override
  final int roomID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomEvent.joinRoom(roomID: $roomID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomEvent.joinRoom'))
      ..add(DiagnosticsProperty('roomID', roomID));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinRoomImpl &&
            (identical(other.roomID, roomID) || other.roomID == roomID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinRoomImplCopyWith<_$JoinRoomImpl> get copyWith =>
      __$$JoinRoomImplCopyWithImpl<_$JoinRoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) createRoom,
    required TResult Function(int roomID) joinRoom,
    required TResult Function() ready,
    required TResult Function() leaveRoom,
  }) {
    return joinRoom(roomID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? createRoom,
    TResult? Function(int roomID)? joinRoom,
    TResult? Function()? ready,
    TResult? Function()? leaveRoom,
  }) {
    return joinRoom?.call(roomID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? createRoom,
    TResult Function(int roomID)? joinRoom,
    TResult Function()? ready,
    TResult Function()? leaveRoom,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(roomID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRoom value) createRoom,
    required TResult Function(JoinRoom value) joinRoom,
    required TResult Function(Ready value) ready,
    required TResult Function(LeaveRoom value) leaveRoom,
  }) {
    return joinRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRoom value)? createRoom,
    TResult? Function(JoinRoom value)? joinRoom,
    TResult? Function(Ready value)? ready,
    TResult? Function(LeaveRoom value)? leaveRoom,
  }) {
    return joinRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRoom value)? createRoom,
    TResult Function(JoinRoom value)? joinRoom,
    TResult Function(Ready value)? ready,
    TResult Function(LeaveRoom value)? leaveRoom,
    required TResult orElse(),
  }) {
    if (joinRoom != null) {
      return joinRoom(this);
    }
    return orElse();
  }
}

abstract class JoinRoom implements RoomEvent {
  const factory JoinRoom(final int roomID) = _$JoinRoomImpl;

  int get roomID;
  @JsonKey(ignore: true)
  _$$JoinRoomImplCopyWith<_$JoinRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReadyImpl with DiagnosticableTreeMixin implements Ready {
  const _$ReadyImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomEvent.ready()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RoomEvent.ready'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) createRoom,
    required TResult Function(int roomID) joinRoom,
    required TResult Function() ready,
    required TResult Function() leaveRoom,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? createRoom,
    TResult? Function(int roomID)? joinRoom,
    TResult? Function()? ready,
    TResult? Function()? leaveRoom,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? createRoom,
    TResult Function(int roomID)? joinRoom,
    TResult Function()? ready,
    TResult Function()? leaveRoom,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRoom value) createRoom,
    required TResult Function(JoinRoom value) joinRoom,
    required TResult Function(Ready value) ready,
    required TResult Function(LeaveRoom value) leaveRoom,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRoom value)? createRoom,
    TResult? Function(JoinRoom value)? joinRoom,
    TResult? Function(Ready value)? ready,
    TResult? Function(LeaveRoom value)? leaveRoom,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRoom value)? createRoom,
    TResult Function(JoinRoom value)? joinRoom,
    TResult Function(Ready value)? ready,
    TResult Function(LeaveRoom value)? leaveRoom,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements RoomEvent {
  const factory Ready() = _$ReadyImpl;
}

/// @nodoc
abstract class _$$LeaveRoomImplCopyWith<$Res> {
  factory _$$LeaveRoomImplCopyWith(
          _$LeaveRoomImpl value, $Res Function(_$LeaveRoomImpl) then) =
      __$$LeaveRoomImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaveRoomImplCopyWithImpl<$Res>
    extends _$RoomEventCopyWithImpl<$Res, _$LeaveRoomImpl>
    implements _$$LeaveRoomImplCopyWith<$Res> {
  __$$LeaveRoomImplCopyWithImpl(
      _$LeaveRoomImpl _value, $Res Function(_$LeaveRoomImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaveRoomImpl with DiagnosticableTreeMixin implements LeaveRoom {
  const _$LeaveRoomImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomEvent.leaveRoom()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RoomEvent.leaveRoom'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaveRoomImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Book book) createRoom,
    required TResult Function(int roomID) joinRoom,
    required TResult Function() ready,
    required TResult Function() leaveRoom,
  }) {
    return leaveRoom();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Book book)? createRoom,
    TResult? Function(int roomID)? joinRoom,
    TResult? Function()? ready,
    TResult? Function()? leaveRoom,
  }) {
    return leaveRoom?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Book book)? createRoom,
    TResult Function(int roomID)? joinRoom,
    TResult Function()? ready,
    TResult Function()? leaveRoom,
    required TResult orElse(),
  }) {
    if (leaveRoom != null) {
      return leaveRoom();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateRoom value) createRoom,
    required TResult Function(JoinRoom value) joinRoom,
    required TResult Function(Ready value) ready,
    required TResult Function(LeaveRoom value) leaveRoom,
  }) {
    return leaveRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateRoom value)? createRoom,
    TResult? Function(JoinRoom value)? joinRoom,
    TResult? Function(Ready value)? ready,
    TResult? Function(LeaveRoom value)? leaveRoom,
  }) {
    return leaveRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateRoom value)? createRoom,
    TResult Function(JoinRoom value)? joinRoom,
    TResult Function(Ready value)? ready,
    TResult Function(LeaveRoom value)? leaveRoom,
    required TResult orElse(),
  }) {
    if (leaveRoom != null) {
      return leaveRoom(this);
    }
    return orElse();
  }
}

abstract class LeaveRoom implements RoomEvent {
  const factory LeaveRoom() = _$LeaveRoomImpl;
}

/// @nodoc
mixin _$RoomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomJoined,
    required TResult Function(Room room) roomStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Room room)? roomJoined,
    TResult? Function(Room room)? roomStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomJoined,
    TResult Function(Room room)? roomStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomJoined value) roomJoined,
    required TResult Function(RoomStarted value) roomStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateInitial value)? initial,
    TResult? Function(RoomJoined value)? roomJoined,
    TResult? Function(RoomStarted value)? roomStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomJoined value)? roomJoined,
    TResult Function(RoomStarted value)? roomStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStateCopyWith<$Res> {
  factory $RoomStateCopyWith(RoomState value, $Res Function(RoomState) then) =
      _$RoomStateCopyWithImpl<$Res, RoomState>;
}

/// @nodoc
class _$RoomStateCopyWithImpl<$Res, $Val extends RoomState>
    implements $RoomStateCopyWith<$Res> {
  _$RoomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RoomStateInitialImplCopyWith<$Res> {
  factory _$$RoomStateInitialImplCopyWith(_$RoomStateInitialImpl value,
          $Res Function(_$RoomStateInitialImpl) then) =
      __$$RoomStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RoomStateInitialImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStateInitialImpl>
    implements _$$RoomStateInitialImplCopyWith<$Res> {
  __$$RoomStateInitialImplCopyWithImpl(_$RoomStateInitialImpl _value,
      $Res Function(_$RoomStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RoomStateInitialImpl
    with DiagnosticableTreeMixin
    implements RoomStateInitial {
  const _$RoomStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RoomState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RoomStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomJoined,
    required TResult Function(Room room) roomStarted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Room room)? roomJoined,
    TResult? Function(Room room)? roomStarted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomJoined,
    TResult Function(Room room)? roomStarted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomJoined value) roomJoined,
    required TResult Function(RoomStarted value) roomStarted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateInitial value)? initial,
    TResult? Function(RoomJoined value)? roomJoined,
    TResult? Function(RoomStarted value)? roomStarted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomJoined value)? roomJoined,
    TResult Function(RoomStarted value)? roomStarted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RoomStateInitial implements RoomState {
  const factory RoomStateInitial() = _$RoomStateInitialImpl;
}

/// @nodoc
abstract class _$$RoomJoinedImplCopyWith<$Res> {
  factory _$$RoomJoinedImplCopyWith(
          _$RoomJoinedImpl value, $Res Function(_$RoomJoinedImpl) then) =
      __$$RoomJoinedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$$RoomJoinedImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomJoinedImpl>
    implements _$$RoomJoinedImplCopyWith<$Res> {
  __$$RoomJoinedImplCopyWithImpl(
      _$RoomJoinedImpl _value, $Res Function(_$RoomJoinedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$RoomJoinedImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$RoomJoinedImpl with DiagnosticableTreeMixin implements RoomJoined {
  const _$RoomJoinedImpl(this.room);

  @override
  final Room room;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomState.roomJoined(room: $room)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomState.roomJoined'))
      ..add(DiagnosticsProperty('room', room));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomJoinedImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomJoinedImplCopyWith<_$RoomJoinedImpl> get copyWith =>
      __$$RoomJoinedImplCopyWithImpl<_$RoomJoinedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomJoined,
    required TResult Function(Room room) roomStarted,
  }) {
    return roomJoined(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Room room)? roomJoined,
    TResult? Function(Room room)? roomStarted,
  }) {
    return roomJoined?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomJoined,
    TResult Function(Room room)? roomStarted,
    required TResult orElse(),
  }) {
    if (roomJoined != null) {
      return roomJoined(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomJoined value) roomJoined,
    required TResult Function(RoomStarted value) roomStarted,
  }) {
    return roomJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateInitial value)? initial,
    TResult? Function(RoomJoined value)? roomJoined,
    TResult? Function(RoomStarted value)? roomStarted,
  }) {
    return roomJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomJoined value)? roomJoined,
    TResult Function(RoomStarted value)? roomStarted,
    required TResult orElse(),
  }) {
    if (roomJoined != null) {
      return roomJoined(this);
    }
    return orElse();
  }
}

abstract class RoomJoined implements RoomState {
  const factory RoomJoined(final Room room) = _$RoomJoinedImpl;

  Room get room;
  @JsonKey(ignore: true)
  _$$RoomJoinedImplCopyWith<_$RoomJoinedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RoomStartedImplCopyWith<$Res> {
  factory _$$RoomStartedImplCopyWith(
          _$RoomStartedImpl value, $Res Function(_$RoomStartedImpl) then) =
      __$$RoomStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class __$$RoomStartedImplCopyWithImpl<$Res>
    extends _$RoomStateCopyWithImpl<$Res, _$RoomStartedImpl>
    implements _$$RoomStartedImplCopyWith<$Res> {
  __$$RoomStartedImplCopyWithImpl(
      _$RoomStartedImpl _value, $Res Function(_$RoomStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room = null,
  }) {
    return _then(_$RoomStartedImpl(
      null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc

class _$RoomStartedImpl with DiagnosticableTreeMixin implements RoomStarted {
  const _$RoomStartedImpl(this.room);

  @override
  final Room room;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomState.roomStarted(room: $room)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomState.roomStarted'))
      ..add(DiagnosticsProperty('room', room));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStartedImpl &&
            (identical(other.room, room) || other.room == room));
  }

  @override
  int get hashCode => Object.hash(runtimeType, room);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStartedImplCopyWith<_$RoomStartedImpl> get copyWith =>
      __$$RoomStartedImplCopyWithImpl<_$RoomStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) roomJoined,
    required TResult Function(Room room) roomStarted,
  }) {
    return roomStarted(room);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Room room)? roomJoined,
    TResult? Function(Room room)? roomStarted,
  }) {
    return roomStarted?.call(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? roomJoined,
    TResult Function(Room room)? roomStarted,
    required TResult orElse(),
  }) {
    if (roomStarted != null) {
      return roomStarted(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RoomStateInitial value) initial,
    required TResult Function(RoomJoined value) roomJoined,
    required TResult Function(RoomStarted value) roomStarted,
  }) {
    return roomStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RoomStateInitial value)? initial,
    TResult? Function(RoomJoined value)? roomJoined,
    TResult? Function(RoomStarted value)? roomStarted,
  }) {
    return roomStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RoomStateInitial value)? initial,
    TResult Function(RoomJoined value)? roomJoined,
    TResult Function(RoomStarted value)? roomStarted,
    required TResult orElse(),
  }) {
    if (roomStarted != null) {
      return roomStarted(this);
    }
    return orElse();
  }
}

abstract class RoomStarted implements RoomState {
  const factory RoomStarted(final Room room) = _$RoomStartedImpl;

  Room get room;
  @JsonKey(ignore: true)
  _$$RoomStartedImplCopyWith<_$RoomStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
