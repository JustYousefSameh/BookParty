// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListBooks value) listBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListBooks value)? listBooks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListBooks value)? listBooks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageWatcherEventCopyWith<$Res> {
  factory $StorageWatcherEventCopyWith(
          StorageWatcherEvent value, $Res Function(StorageWatcherEvent) then) =
      _$StorageWatcherEventCopyWithImpl<$Res, StorageWatcherEvent>;
}

/// @nodoc
class _$StorageWatcherEventCopyWithImpl<$Res, $Val extends StorageWatcherEvent>
    implements $StorageWatcherEventCopyWith<$Res> {
  _$StorageWatcherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListBooksImplCopyWith<$Res> {
  factory _$$ListBooksImplCopyWith(
          _$ListBooksImpl value, $Res Function(_$ListBooksImpl) then) =
      __$$ListBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListBooksImplCopyWithImpl<$Res>
    extends _$StorageWatcherEventCopyWithImpl<$Res, _$ListBooksImpl>
    implements _$$ListBooksImplCopyWith<$Res> {
  __$$ListBooksImplCopyWithImpl(
      _$ListBooksImpl _value, $Res Function(_$ListBooksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListBooksImpl implements _ListBooks {
  const _$ListBooksImpl();

  @override
  String toString() {
    return 'StorageWatcherEvent.listBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listBooks,
  }) {
    return listBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listBooks,
  }) {
    return listBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listBooks,
    required TResult orElse(),
  }) {
    if (listBooks != null) {
      return listBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListBooks value) listBooks,
  }) {
    return listBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListBooks value)? listBooks,
  }) {
    return listBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListBooks value)? listBooks,
    required TResult orElse(),
  }) {
    if (listBooks != null) {
      return listBooks(this);
    }
    return orElse();
  }
}

abstract class _ListBooks implements StorageWatcherEvent {
  const factory _ListBooks() = _$ListBooksImpl;
}

/// @nodoc
mixin _$StorageWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Book> books) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Book> books)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Book> books)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageWatcherInitial value) initial,
    required TResult Function(StorageWatcherLoading value) loading,
    required TResult Function(StorageWatcherError value) error,
    required TResult Function(StorageWatcherLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageWatcherInitial value)? initial,
    TResult? Function(StorageWatcherLoading value)? loading,
    TResult? Function(StorageWatcherError value)? error,
    TResult? Function(StorageWatcherLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageWatcherInitial value)? initial,
    TResult Function(StorageWatcherLoading value)? loading,
    TResult Function(StorageWatcherError value)? error,
    TResult Function(StorageWatcherLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageWatcherStateCopyWith<$Res> {
  factory $StorageWatcherStateCopyWith(
          StorageWatcherState value, $Res Function(StorageWatcherState) then) =
      _$StorageWatcherStateCopyWithImpl<$Res, StorageWatcherState>;
}

/// @nodoc
class _$StorageWatcherStateCopyWithImpl<$Res, $Val extends StorageWatcherState>
    implements $StorageWatcherStateCopyWith<$Res> {
  _$StorageWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StorageWatcherInitialImplCopyWith<$Res> {
  factory _$$StorageWatcherInitialImplCopyWith(
          _$StorageWatcherInitialImpl value,
          $Res Function(_$StorageWatcherInitialImpl) then) =
      __$$StorageWatcherInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageWatcherInitialImplCopyWithImpl<$Res>
    extends _$StorageWatcherStateCopyWithImpl<$Res, _$StorageWatcherInitialImpl>
    implements _$$StorageWatcherInitialImplCopyWith<$Res> {
  __$$StorageWatcherInitialImplCopyWithImpl(_$StorageWatcherInitialImpl _value,
      $Res Function(_$StorageWatcherInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageWatcherInitialImpl implements StorageWatcherInitial {
  const _$StorageWatcherInitialImpl();

  @override
  String toString() {
    return 'StorageWatcherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageWatcherInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Book> books) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Book> books)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Book> books)? loaded,
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
    required TResult Function(StorageWatcherInitial value) initial,
    required TResult Function(StorageWatcherLoading value) loading,
    required TResult Function(StorageWatcherError value) error,
    required TResult Function(StorageWatcherLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageWatcherInitial value)? initial,
    TResult? Function(StorageWatcherLoading value)? loading,
    TResult? Function(StorageWatcherError value)? error,
    TResult? Function(StorageWatcherLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageWatcherInitial value)? initial,
    TResult Function(StorageWatcherLoading value)? loading,
    TResult Function(StorageWatcherError value)? error,
    TResult Function(StorageWatcherLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StorageWatcherInitial implements StorageWatcherState {
  const factory StorageWatcherInitial() = _$StorageWatcherInitialImpl;
}

/// @nodoc
abstract class _$$StorageWatcherLoadingImplCopyWith<$Res> {
  factory _$$StorageWatcherLoadingImplCopyWith(
          _$StorageWatcherLoadingImpl value,
          $Res Function(_$StorageWatcherLoadingImpl) then) =
      __$$StorageWatcherLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageWatcherLoadingImplCopyWithImpl<$Res>
    extends _$StorageWatcherStateCopyWithImpl<$Res, _$StorageWatcherLoadingImpl>
    implements _$$StorageWatcherLoadingImplCopyWith<$Res> {
  __$$StorageWatcherLoadingImplCopyWithImpl(_$StorageWatcherLoadingImpl _value,
      $Res Function(_$StorageWatcherLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageWatcherLoadingImpl implements StorageWatcherLoading {
  const _$StorageWatcherLoadingImpl();

  @override
  String toString() {
    return 'StorageWatcherState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageWatcherLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Book> books) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Book> books)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Book> books)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageWatcherInitial value) initial,
    required TResult Function(StorageWatcherLoading value) loading,
    required TResult Function(StorageWatcherError value) error,
    required TResult Function(StorageWatcherLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageWatcherInitial value)? initial,
    TResult? Function(StorageWatcherLoading value)? loading,
    TResult? Function(StorageWatcherError value)? error,
    TResult? Function(StorageWatcherLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageWatcherInitial value)? initial,
    TResult Function(StorageWatcherLoading value)? loading,
    TResult Function(StorageWatcherError value)? error,
    TResult Function(StorageWatcherLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StorageWatcherLoading implements StorageWatcherState {
  const factory StorageWatcherLoading() = _$StorageWatcherLoadingImpl;
}

/// @nodoc
abstract class _$$StorageWatcherErrorImplCopyWith<$Res> {
  factory _$$StorageWatcherErrorImplCopyWith(_$StorageWatcherErrorImpl value,
          $Res Function(_$StorageWatcherErrorImpl) then) =
      __$$StorageWatcherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StorageWatcherErrorImplCopyWithImpl<$Res>
    extends _$StorageWatcherStateCopyWithImpl<$Res, _$StorageWatcherErrorImpl>
    implements _$$StorageWatcherErrorImplCopyWith<$Res> {
  __$$StorageWatcherErrorImplCopyWithImpl(_$StorageWatcherErrorImpl _value,
      $Res Function(_$StorageWatcherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StorageWatcherErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StorageWatcherErrorImpl implements StorageWatcherError {
  const _$StorageWatcherErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StorageWatcherState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageWatcherErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageWatcherErrorImplCopyWith<_$StorageWatcherErrorImpl> get copyWith =>
      __$$StorageWatcherErrorImplCopyWithImpl<_$StorageWatcherErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Book> books) loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Book> books)? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Book> books)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageWatcherInitial value) initial,
    required TResult Function(StorageWatcherLoading value) loading,
    required TResult Function(StorageWatcherError value) error,
    required TResult Function(StorageWatcherLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageWatcherInitial value)? initial,
    TResult? Function(StorageWatcherLoading value)? loading,
    TResult? Function(StorageWatcherError value)? error,
    TResult? Function(StorageWatcherLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageWatcherInitial value)? initial,
    TResult Function(StorageWatcherLoading value)? loading,
    TResult Function(StorageWatcherError value)? error,
    TResult Function(StorageWatcherLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StorageWatcherError implements StorageWatcherState {
  const factory StorageWatcherError(final String error) =
      _$StorageWatcherErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StorageWatcherErrorImplCopyWith<_$StorageWatcherErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageWatcherLoadedImplCopyWith<$Res> {
  factory _$$StorageWatcherLoadedImplCopyWith(_$StorageWatcherLoadedImpl value,
          $Res Function(_$StorageWatcherLoadedImpl) then) =
      __$$StorageWatcherLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> books});
}

/// @nodoc
class __$$StorageWatcherLoadedImplCopyWithImpl<$Res>
    extends _$StorageWatcherStateCopyWithImpl<$Res, _$StorageWatcherLoadedImpl>
    implements _$$StorageWatcherLoadedImplCopyWith<$Res> {
  __$$StorageWatcherLoadedImplCopyWithImpl(_$StorageWatcherLoadedImpl _value,
      $Res Function(_$StorageWatcherLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
  }) {
    return _then(_$StorageWatcherLoadedImpl(
      null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$StorageWatcherLoadedImpl implements StorageWatcherLoaded {
  const _$StorageWatcherLoadedImpl(final List<Book> books) : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'StorageWatcherState.loaded(books: $books)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageWatcherLoadedImpl &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageWatcherLoadedImplCopyWith<_$StorageWatcherLoadedImpl>
      get copyWith =>
          __$$StorageWatcherLoadedImplCopyWithImpl<_$StorageWatcherLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<Book> books) loaded,
  }) {
    return loaded(books);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<Book> books)? loaded,
  }) {
    return loaded?.call(books);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<Book> books)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(books);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageWatcherInitial value) initial,
    required TResult Function(StorageWatcherLoading value) loading,
    required TResult Function(StorageWatcherError value) error,
    required TResult Function(StorageWatcherLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageWatcherInitial value)? initial,
    TResult? Function(StorageWatcherLoading value)? loading,
    TResult? Function(StorageWatcherError value)? error,
    TResult? Function(StorageWatcherLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageWatcherInitial value)? initial,
    TResult Function(StorageWatcherLoading value)? loading,
    TResult Function(StorageWatcherError value)? error,
    TResult Function(StorageWatcherLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class StorageWatcherLoaded implements StorageWatcherState {
  const factory StorageWatcherLoaded(final List<Book> books) =
      _$StorageWatcherLoadedImpl;

  List<Book> get books;
  @JsonKey(ignore: true)
  _$$StorageWatcherLoadedImplCopyWith<_$StorageWatcherLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
