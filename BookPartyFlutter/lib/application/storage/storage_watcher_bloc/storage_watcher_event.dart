part of 'storage_watcher_bloc.dart';

@freezed
sealed class StorageWatcherEvent with _$StorageWatcherEvent {
  const factory StorageWatcherEvent.listBooks() = _ListBooks;
}
