import 'package:bookparty/application/storage/storage_bloc/storage_bloc.dart';
import 'package:bookparty/presentation/home/book_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/storage/book.dart';

class BookWidget extends StatelessWidget {
  final Book book;
  final int index;
  const BookWidget({super.key, required this.book, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BookDetails(
            index: index,
            book: book,
          ),
        ),
      ),
      onLongPress: () =>
          context.read<StorageBloc>().add(StorageEvent.deleteBook(book.title)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            Hero(
              tag: 'Book$index',
              child: Image.network(
                book.thumbnail,
                height: 200,
                width: 133,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Text(
                book.title,
                style: GoogleFonts.notoSansOsmanya(),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
