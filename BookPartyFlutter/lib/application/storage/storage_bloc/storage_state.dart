part of 'storage_bloc.dart';

@freezed
sealed class StorageState with _$StorageState {
  const factory StorageState.initial() = StorageStateInitial;
  const factory StorageState.loadInProgress() = StorageStateLoadInProgress;
  const factory StorageState.uploadSuccess() = StorageStateUploadSuccess;
  const factory StorageState.uploadFailure(String error) =
      StorageStateUploadFailure;
  const factory StorageState.deleteSuccess() = StorageStateDeleteSuccess;
  const factory StorageState.deleteFailure(String error) =
      StorageStateDeleteFailure;
}
