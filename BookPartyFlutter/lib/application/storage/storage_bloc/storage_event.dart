part of 'storage_bloc.dart';

@freezed
sealed class StorageEvent with _$StorageEvent {
  const factory StorageEvent.createBook(File file) = CreateBook;
  const factory StorageEvent.deleteBook(String name) = DeleteBook;
  const factory StorageEvent.getBook(String name) = GetBook;
}
