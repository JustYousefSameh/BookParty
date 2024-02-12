import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class Book implements _$Book {
  const Book._();

  const factory Book({
    required String title,
    required String author,
    required String description,
    required String thumbnail,
    required String url,
  }) = _Book;

  factory Book.empty() => const Book(
        title: '',
        author: '',
        description: '',
        thumbnail: '',
        url: '',
      );

  factory Book.fromJson(json) => _$BookFromJson(json);
}
