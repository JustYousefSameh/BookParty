// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) createBook,
    required TResult Function(String name) deleteBook,
    required TResult Function(String name) getBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? createBook,
    TResult? Function(String name)? deleteBook,
    TResult? Function(String name)? getBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? createBook,
    TResult Function(String name)? deleteBook,
    TResult Function(String name)? getBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateBook value) createBook,
    required TResult Function(DeleteBook value) deleteBook,
    required TResult Function(GetBook value) getBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateBook value)? createBook,
    TResult? Function(DeleteBook value)? deleteBook,
    TResult? Function(GetBook value)? getBook,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateBook value)? createBook,
    TResult Function(DeleteBook value)? deleteBook,
    TResult Function(GetBook value)? getBook,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageEventCopyWith<$Res> {
  factory $StorageEventCopyWith(
          StorageEvent value, $Res Function(StorageEvent) then) =
      _$StorageEventCopyWithImpl<$Res, StorageEvent>;
}

/// @nodoc
class _$StorageEventCopyWithImpl<$Res, $Val extends StorageEvent>
    implements $StorageEventCopyWith<$Res> {
  _$StorageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateBookImplCopyWith<$Res> {
  factory _$$CreateBookImplCopyWith(
          _$CreateBookImpl value, $Res Function(_$CreateBookImpl) then) =
      __$$CreateBookImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$CreateBookImplCopyWithImpl<$Res>
    extends _$StorageEventCopyWithImpl<$Res, _$CreateBookImpl>
    implements _$$CreateBookImplCopyWith<$Res> {
  __$$CreateBookImplCopyWithImpl(
      _$CreateBookImpl _value, $Res Function(_$CreateBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$CreateBookImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$CreateBookImpl implements CreateBook {
  const _$CreateBookImpl(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'StorageEvent.createBook(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookImplCopyWith<_$CreateBookImpl> get copyWith =>
      __$$CreateBookImplCopyWithImpl<_$CreateBookImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) createBook,
    required TResult Function(String name) deleteBook,
    required TResult Function(String name) getBook,
  }) {
    return createBook(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? createBook,
    TResult? Function(String name)? deleteBook,
    TResult? Function(String name)? getBook,
  }) {
    return createBook?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? createBook,
    TResult Function(String name)? deleteBook,
    TResult Function(String name)? getBook,
    required TResult orElse(),
  }) {
    if (createBook != null) {
      return createBook(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateBook value) createBook,
    required TResult Function(DeleteBook value) deleteBook,
    required TResult Function(GetBook value) getBook,
  }) {
    return createBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateBook value)? createBook,
    TResult? Function(DeleteBook value)? deleteBook,
    TResult? Function(GetBook value)? getBook,
  }) {
    return createBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateBook value)? createBook,
    TResult Function(DeleteBook value)? deleteBook,
    TResult Function(GetBook value)? getBook,
    required TResult orElse(),
  }) {
    if (createBook != null) {
      return createBook(this);
    }
    return orElse();
  }
}

abstract class CreateBook implements StorageEvent {
  const factory CreateBook(final File file) = _$CreateBookImpl;

  File get file;
  @JsonKey(ignore: true)
  _$$CreateBookImplCopyWith<_$CreateBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBookImplCopyWith<$Res> {
  factory _$$DeleteBookImplCopyWith(
          _$DeleteBookImpl value, $Res Function(_$DeleteBookImpl) then) =
      __$$DeleteBookImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DeleteBookImplCopyWithImpl<$Res>
    extends _$StorageEventCopyWithImpl<$Res, _$DeleteBookImpl>
    implements _$$DeleteBookImplCopyWith<$Res> {
  __$$DeleteBookImplCopyWithImpl(
      _$DeleteBookImpl _value, $Res Function(_$DeleteBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$DeleteBookImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteBookImpl implements DeleteBook {
  const _$DeleteBookImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'StorageEvent.deleteBook(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBookImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookImplCopyWith<_$DeleteBookImpl> get copyWith =>
      __$$DeleteBookImplCopyWithImpl<_$DeleteBookImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) createBook,
    required TResult Function(String name) deleteBook,
    required TResult Function(String name) getBook,
  }) {
    return deleteBook(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? createBook,
    TResult? Function(String name)? deleteBook,
    TResult? Function(String name)? getBook,
  }) {
    return deleteBook?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? createBook,
    TResult Function(String name)? deleteBook,
    TResult Function(String name)? getBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateBook value) createBook,
    required TResult Function(DeleteBook value) deleteBook,
    required TResult Function(GetBook value) getBook,
  }) {
    return deleteBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateBook value)? createBook,
    TResult? Function(DeleteBook value)? deleteBook,
    TResult? Function(GetBook value)? getBook,
  }) {
    return deleteBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateBook value)? createBook,
    TResult Function(DeleteBook value)? deleteBook,
    TResult Function(GetBook value)? getBook,
    required TResult orElse(),
  }) {
    if (deleteBook != null) {
      return deleteBook(this);
    }
    return orElse();
  }
}

abstract class DeleteBook implements StorageEvent {
  const factory DeleteBook(final String name) = _$DeleteBookImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$DeleteBookImplCopyWith<_$DeleteBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookImplCopyWith<$Res> {
  factory _$$GetBookImplCopyWith(
          _$GetBookImpl value, $Res Function(_$GetBookImpl) then) =
      __$$GetBookImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GetBookImplCopyWithImpl<$Res>
    extends _$StorageEventCopyWithImpl<$Res, _$GetBookImpl>
    implements _$$GetBookImplCopyWith<$Res> {
  __$$GetBookImplCopyWithImpl(
      _$GetBookImpl _value, $Res Function(_$GetBookImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GetBookImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBookImpl implements GetBook {
  const _$GetBookImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'StorageEvent.getBook(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookImplCopyWith<_$GetBookImpl> get copyWith =>
      __$$GetBookImplCopyWithImpl<_$GetBookImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) createBook,
    required TResult Function(String name) deleteBook,
    required TResult Function(String name) getBook,
  }) {
    return getBook(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file)? createBook,
    TResult? Function(String name)? deleteBook,
    TResult? Function(String name)? getBook,
  }) {
    return getBook?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? createBook,
    TResult Function(String name)? deleteBook,
    TResult Function(String name)? getBook,
    required TResult orElse(),
  }) {
    if (getBook != null) {
      return getBook(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateBook value) createBook,
    required TResult Function(DeleteBook value) deleteBook,
    required TResult Function(GetBook value) getBook,
  }) {
    return getBook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateBook value)? createBook,
    TResult? Function(DeleteBook value)? deleteBook,
    TResult? Function(GetBook value)? getBook,
  }) {
    return getBook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateBook value)? createBook,
    TResult Function(DeleteBook value)? deleteBook,
    TResult Function(GetBook value)? getBook,
    required TResult orElse(),
  }) {
    if (getBook != null) {
      return getBook(this);
    }
    return orElse();
  }
}

abstract class GetBook implements StorageEvent {
  const factory GetBook(final String name) = _$GetBookImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$GetBookImplCopyWith<_$GetBookImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StorageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageStateCopyWith<$Res> {
  factory $StorageStateCopyWith(
          StorageState value, $Res Function(StorageState) then) =
      _$StorageStateCopyWithImpl<$Res, StorageState>;
}

/// @nodoc
class _$StorageStateCopyWithImpl<$Res, $Val extends StorageState>
    implements $StorageStateCopyWith<$Res> {
  _$StorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StorageStateInitialImplCopyWith<$Res> {
  factory _$$StorageStateInitialImplCopyWith(_$StorageStateInitialImpl value,
          $Res Function(_$StorageStateInitialImpl) then) =
      __$$StorageStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageStateInitialImplCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$StorageStateInitialImpl>
    implements _$$StorageStateInitialImplCopyWith<$Res> {
  __$$StorageStateInitialImplCopyWithImpl(_$StorageStateInitialImpl _value,
      $Res Function(_$StorageStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageStateInitialImpl implements StorageStateInitial {
  const _$StorageStateInitialImpl();

  @override
  String toString() {
    return 'StorageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
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
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StorageStateInitial implements StorageState {
  const factory StorageStateInitial() = _$StorageStateInitialImpl;
}

/// @nodoc
abstract class _$$StorageStateLoadInProgressImplCopyWith<$Res> {
  factory _$$StorageStateLoadInProgressImplCopyWith(
          _$StorageStateLoadInProgressImpl value,
          $Res Function(_$StorageStateLoadInProgressImpl) then) =
      __$$StorageStateLoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageStateLoadInProgressImplCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$StorageStateLoadInProgressImpl>
    implements _$$StorageStateLoadInProgressImplCopyWith<$Res> {
  __$$StorageStateLoadInProgressImplCopyWithImpl(
      _$StorageStateLoadInProgressImpl _value,
      $Res Function(_$StorageStateLoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageStateLoadInProgressImpl implements StorageStateLoadInProgress {
  const _$StorageStateLoadInProgressImpl();

  @override
  String toString() {
    return 'StorageState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageStateLoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class StorageStateLoadInProgress implements StorageState {
  const factory StorageStateLoadInProgress() = _$StorageStateLoadInProgressImpl;
}

/// @nodoc
abstract class _$$StorageStateUploadSuccessImplCopyWith<$Res> {
  factory _$$StorageStateUploadSuccessImplCopyWith(
          _$StorageStateUploadSuccessImpl value,
          $Res Function(_$StorageStateUploadSuccessImpl) then) =
      __$$StorageStateUploadSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageStateUploadSuccessImplCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$StorageStateUploadSuccessImpl>
    implements _$$StorageStateUploadSuccessImplCopyWith<$Res> {
  __$$StorageStateUploadSuccessImplCopyWithImpl(
      _$StorageStateUploadSuccessImpl _value,
      $Res Function(_$StorageStateUploadSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageStateUploadSuccessImpl implements StorageStateUploadSuccess {
  const _$StorageStateUploadSuccessImpl();

  @override
  String toString() {
    return 'StorageState.uploadSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageStateUploadSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) {
    return uploadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) {
    return uploadSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) {
    return uploadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) {
    return uploadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess(this);
    }
    return orElse();
  }
}

abstract class StorageStateUploadSuccess implements StorageState {
  const factory StorageStateUploadSuccess() = _$StorageStateUploadSuccessImpl;
}

/// @nodoc
abstract class _$$StorageStateUploadFailureImplCopyWith<$Res> {
  factory _$$StorageStateUploadFailureImplCopyWith(
          _$StorageStateUploadFailureImpl value,
          $Res Function(_$StorageStateUploadFailureImpl) then) =
      __$$StorageStateUploadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StorageStateUploadFailureImplCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$StorageStateUploadFailureImpl>
    implements _$$StorageStateUploadFailureImplCopyWith<$Res> {
  __$$StorageStateUploadFailureImplCopyWithImpl(
      _$StorageStateUploadFailureImpl _value,
      $Res Function(_$StorageStateUploadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StorageStateUploadFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StorageStateUploadFailureImpl implements StorageStateUploadFailure {
  const _$StorageStateUploadFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StorageState.uploadFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageStateUploadFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageStateUploadFailureImplCopyWith<_$StorageStateUploadFailureImpl>
      get copyWith => __$$StorageStateUploadFailureImplCopyWithImpl<
          _$StorageStateUploadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) {
    return uploadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) {
    return uploadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
    required TResult orElse(),
  }) {
    if (uploadFailure != null) {
      return uploadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) {
    return uploadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) {
    return uploadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (uploadFailure != null) {
      return uploadFailure(this);
    }
    return orElse();
  }
}

abstract class StorageStateUploadFailure implements StorageState {
  const factory StorageStateUploadFailure(final String error) =
      _$StorageStateUploadFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StorageStateUploadFailureImplCopyWith<_$StorageStateUploadFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageStateDeleteSuccessImplCopyWith<$Res> {
  factory _$$StorageStateDeleteSuccessImplCopyWith(
          _$StorageStateDeleteSuccessImpl value,
          $Res Function(_$StorageStateDeleteSuccessImpl) then) =
      __$$StorageStateDeleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageStateDeleteSuccessImplCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$StorageStateDeleteSuccessImpl>
    implements _$$StorageStateDeleteSuccessImplCopyWith<$Res> {
  __$$StorageStateDeleteSuccessImplCopyWithImpl(
      _$StorageStateDeleteSuccessImpl _value,
      $Res Function(_$StorageStateDeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageStateDeleteSuccessImpl implements StorageStateDeleteSuccess {
  const _$StorageStateDeleteSuccessImpl();

  @override
  String toString() {
    return 'StorageState.deleteSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageStateDeleteSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class StorageStateDeleteSuccess implements StorageState {
  const factory StorageStateDeleteSuccess() = _$StorageStateDeleteSuccessImpl;
}

/// @nodoc
abstract class _$$StorageStateDeleteFailureImplCopyWith<$Res> {
  factory _$$StorageStateDeleteFailureImplCopyWith(
          _$StorageStateDeleteFailureImpl value,
          $Res Function(_$StorageStateDeleteFailureImpl) then) =
      __$$StorageStateDeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$StorageStateDeleteFailureImplCopyWithImpl<$Res>
    extends _$StorageStateCopyWithImpl<$Res, _$StorageStateDeleteFailureImpl>
    implements _$$StorageStateDeleteFailureImplCopyWith<$Res> {
  __$$StorageStateDeleteFailureImplCopyWithImpl(
      _$StorageStateDeleteFailureImpl _value,
      $Res Function(_$StorageStateDeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StorageStateDeleteFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StorageStateDeleteFailureImpl implements StorageStateDeleteFailure {
  const _$StorageStateDeleteFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'StorageState.deleteFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageStateDeleteFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageStateDeleteFailureImplCopyWith<_$StorageStateDeleteFailureImpl>
      get copyWith => __$$StorageStateDeleteFailureImplCopyWithImpl<
          _$StorageStateDeleteFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(String error) uploadFailure,
    required TResult Function() deleteSuccess,
    required TResult Function(String error) deleteFailure,
  }) {
    return deleteFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(String error)? uploadFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function(String error)? deleteFailure,
  }) {
    return deleteFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function()? uploadSuccess,
    TResult Function(String error)? uploadFailure,
    TResult Function()? deleteSuccess,
    TResult Function(String error)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StorageStateInitial value) initial,
    required TResult Function(StorageStateLoadInProgress value) loadInProgress,
    required TResult Function(StorageStateUploadSuccess value) uploadSuccess,
    required TResult Function(StorageStateUploadFailure value) uploadFailure,
    required TResult Function(StorageStateDeleteSuccess value) deleteSuccess,
    required TResult Function(StorageStateDeleteFailure value) deleteFailure,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StorageStateInitial value)? initial,
    TResult? Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult? Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult? Function(StorageStateUploadFailure value)? uploadFailure,
    TResult? Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult? Function(StorageStateDeleteFailure value)? deleteFailure,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StorageStateInitial value)? initial,
    TResult Function(StorageStateLoadInProgress value)? loadInProgress,
    TResult Function(StorageStateUploadSuccess value)? uploadSuccess,
    TResult Function(StorageStateUploadFailure value)? uploadFailure,
    TResult Function(StorageStateDeleteSuccess value)? deleteSuccess,
    TResult Function(StorageStateDeleteFailure value)? deleteFailure,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class StorageStateDeleteFailure implements StorageState {
  const factory StorageStateDeleteFailure(final String error) =
      _$StorageStateDeleteFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$StorageStateDeleteFailureImplCopyWith<_$StorageStateDeleteFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
