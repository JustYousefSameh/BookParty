import 'package:bookparty/application/auth/auth_bloc.dart';
import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/injection.dart';
import 'package:bookparty/presentation/room/room_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key, required this.index, required this.book});

  final int index;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<RoomBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        print(context.read<AuthBloc>().state);
        return BlocListener<RoomBloc, RoomState>(
          listenWhen: (previous, current) {
            return previous.runtimeType != RoomJoined;
          },
          listener: (context, state) {
            state.map(
              // roomJoined: (_) {},
              initial: (_) {},
              roomJoined: (value) {
                print(value);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RoomScreen(roomID: value.room.roomID),
                  ),
                );
              },
            );
          },
          child: Scaffold(
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
                        child: Image.network(
                          book.thumbnail,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    onPressed: () => context
                                        .read<RoomBloc>()
                                        .add(const RoomEvent.createRoom()),
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
          ),
        );
      }),
    );
  }
}
