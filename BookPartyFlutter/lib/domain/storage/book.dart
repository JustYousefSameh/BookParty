import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
abstract class Book implements _$Book {
  const Book._();

  const factory Book({
    required String title,
    required String author,
    required String description,
    required String thumbnail,
  }) = _Book;
}
