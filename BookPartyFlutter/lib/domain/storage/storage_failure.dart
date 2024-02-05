import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_failure.freezed.dart';

@freezed
sealed class StorageFailure with _$StorageFailure {
  const factory StorageFailure.serverError(String error) = ServerError;
}
