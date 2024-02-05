part of 'storage_watcher_bloc.dart';

@freezed
sealed class StorageWatcherState with _$StorageWatcherState {
  const factory StorageWatcherState.initial() = StorageWatcherInitial;
  const factory StorageWatcherState.loading() = StorageWatcherLoading;
  const factory StorageWatcherState.error(String error) = StorageWatcherError;
  const factory StorageWatcherState.loaded(List<Book> books) =
      StorageWatcherLoaded;
}
