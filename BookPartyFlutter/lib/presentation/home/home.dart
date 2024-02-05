// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'dart:io';

import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/application/storage/storage_watcher_bloc/storage_watcher_bloc.dart';
import 'package:bookparty/presentation/home/widgets/main_core_widgets.dart';
import 'package:bookparty/presentation/room/room_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookparty/application/auth/auth_bloc.dart';
import 'package:bookparty/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:another_flushbar/flushbar_helper.dart';

import '../../application/storage/storage_bloc/storage_bloc.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final _roomIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<StorageBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<StorageWatcherBloc>()
            ..add(const StorageWatcherEvent.listBooks()),
        ),
        BlocProvider(
          create: (context) => getIt<RoomBloc>(),
        )
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<RoomBloc, RoomState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                roomJoined: (room) {
                  log('Joined room ${room.room}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          RoomScreen(roomID: room.room.roomID),
                    ),
                  );
                },
              );
            },
            child: Container(),
          ),
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              switch (state) {
                case Unauthenticated():
                  context.go('/sign_in');
              }
            },
          ),
          BlocListener<StorageBloc, StorageState>(
            listener: (context, state) {
              switch (state) {
                case StorageStateInitial():
                case StorageStateLoadInProgress():
                  () {};

                case StorageStateDeleteFailure(:final error):
                  FlushbarHelper.createError(message: error).show(context);

                case StorageStateDeleteSuccess():
                  FlushbarHelper.createSuccess(
                          message: 'File deleted successfulyy')
                      .show(context);
                  context
                      .read<StorageWatcherBloc>()
                      .add(const StorageWatcherEvent.listBooks());

                case StorageStateUploadSuccess():
                  FlushbarHelper.createSuccess(
                          message: 'File uploaded successfully')
                      .show(context);
                  context
                      .read<StorageWatcherBloc>()
                      .add(const StorageWatcherEvent.listBooks());

                case StorageStateUploadFailure(:final error):
                  FlushbarHelper.createError(message: error).show(context);
              }
            },
          ),
        ],
        child: BlocBuilder<StorageWatcherBloc, StorageWatcherState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Good Afternoon',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () => context
                        .read<AuthBloc>()
                        .add(const AuthEvent.signedOut()),
                  ),
                ],
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    _whichWidget(state, context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 135,
                              child: TextFormField(
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 16),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                controller: _roomIDController,
                              ),
                            ),
                            SizedBox(
                              height: 54,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  print('asdsad');
                                  context.read<RoomBloc>().add(
                                        RoomEvent.joinRoom(
                                          int.parse(_roomIDController.text),
                                        ),
                                      );
                                },
                                child: const Text('Join Room'),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.pink,
                          ),
                          onPressed: () async => await _addFile(context),
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _whichWidget(StorageWatcherState state, BuildContext context) {
    switch (state) {
      case StorageWatcherInitial():
      case StorageWatcherLoading():
        return const Expanded(
            child: Center(child: CircularProgressIndicator()));

      case StorageWatcherError(:final error):
        return Text(error);

      case StorageWatcherLoaded(:final books):
        return Expanded(
          child: GridView.builder(
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemCount: books.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.55,
              mainAxisSpacing: 5,
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => BookWidget(
              book: books[index],
              index: index,
            ),
          ),
        );
    }
  }

  Future<void> _addFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      File file = File(result.files.first.path!);
      context.read<StorageBloc>().add(CreateBook(file));
    }
  }
}

class PdfViewer extends StatefulWidget {
  const PdfViewer({super.key, required this.file});

  final File file;

  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  late PDFViewController pdfController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        // int randomPage =
        //     randomInt(1, await pdfController.getPageCount() ?? 1).;
        print(await pdfController.setPage(5));
      }),
      body: PDFView(
        filePath: widget.file.path,
        pageSnap: false,
        pageFling: false,
        onViewCreated: (controller) {
          pdfController = controller;
        },
      ),
    );
  }
}
