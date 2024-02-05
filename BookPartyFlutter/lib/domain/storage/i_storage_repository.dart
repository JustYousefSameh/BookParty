import 'dart:io';
import 'package:bookparty/domain/core/value_objects.dart';
import 'package:bookparty/domain/storage/storage_failure.dart';
import 'package:fpdart/fpdart.dart';

import 'book.dart';

abstract class IStorageRepository {
  Future<Either<StorageFailure, List<Book>>> watchAll();
  Future<Either<StorageFailure, Unit>> createBook(File file);
  Future<Either<StorageFailure, Unit>> removeBook(String name);
  Future<Either<StorageFailure, Unit>> getBook({required UniqueId id});
}
