// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bookparty/application/auth/auth_bloc.dart';
import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/application/storage/storage_watcher_bloc/storage_watcher_bloc.dart';
import 'package:bookparty/injection.dart';
import 'package:bookparty/presentation/home/widgets/main_core_widgets.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/storage/storage_bloc/storage_bloc.dart';

class Home extends StatelessWidget {
  Home({super.key});

  Future<void> _addFile(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    if (result != null) {
      File file = File(result.files.first.path!);
      getIt<StorageBloc>().add(CreateBook(file));
    }
  }

  final _roomIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RoomBloc, RoomState>(
          bloc: getIt<RoomBloc>(),
          listenWhen: (previous, current) =>
              (previous.runtimeType != current.runtimeType),
          listener: (context, state) {
            switch (state) {
              case RoomJoined():
                context.pushNamed('RoomScreen');
                break;

              case RoomStarted():
                context.pushNamed('ReadingScreen');

              default:
            }
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          bloc: getIt<AuthBloc>(),
          listener: (context, state) {
            switch (state) {
              case Unauthenticated():
                context.go('/sign_in');
            }
          },
        ),
        BlocListener<StorageBloc, StorageState>(
          bloc: getIt<StorageBloc>(),
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
        bloc: getIt<StorageWatcherBloc>()
          ..add(const StorageWatcherEvent.listBooks()),
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
                  onPressed: () =>
                      getIt<AuthBloc>().add(const AuthEvent.signedOut()),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Builder(
                    builder: (context) {
                      switch (state) {
                        case StorageWatcherInitial():
                        case StorageWatcherLoading():
                          return const Expanded(
                              child:
                                  Center(child: CircularProgressIndicator()));

                        case StorageWatcherError(:final error):
                          return Text(error);

                        case StorageWatcherLoaded(:final books):
                          return Expanded(
                            child: GridView.builder(
                              shrinkWrap: false,
                              physics: const BouncingScrollPhysics(),
                              itemCount: books.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
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
                    },
                  ),
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
                                getIt<RoomBloc>().add(
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
    );
  }
}
