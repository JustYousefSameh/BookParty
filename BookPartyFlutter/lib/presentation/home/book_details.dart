import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/injection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.book, required this.index});

  final int index;
  final Book book;

  @override
  Widget build(BuildContext context) {
    print(GoRouter.of(context).routeInformationProvider.value.uri);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Hero(
              tag: 'Book$index',
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl: book.thumbnail,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF232538),
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const TextButton(
                              onPressed: null,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.book,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Alone',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                              width: 2,
                              thickness: 1,
                              indent: 8,
                              endIndent: 8,
                            ),
                            TextButton(
                              onPressed: () => getIt<RoomBloc>()
                                  .add(RoomEvent.createRoom(book)),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.book,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Group',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
