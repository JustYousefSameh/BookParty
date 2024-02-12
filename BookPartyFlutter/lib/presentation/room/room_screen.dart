import 'dart:isolate';
import 'dart:ui';

import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/domain/room/room_user.dart';
import 'package:bookparty/domain/storage/book.dart';
import 'package:bookparty/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  final ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();
    var taskID = _getFile((getIt<RoomBloc>().state as RoomJoined).room.book);
    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      // DownloadTaskStatus status = Downdata[1];
      int progress = data[2];
      print(progress);
      setState(() {});
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  @override
  void dispose() {
    getIt<RoomBloc>().add(const RoomEvent.leaveRoom());

    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  @pragma('vm:entry-point')
  static void downloadCallback(String id, int status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
  }

  Future<String?> _getFile(Book book) async {
    final dir = await getExternalStorageDirectory();
    dir?.createSync(recursive: true);

    print(dir?.existsSync());
    return await FlutterDownloader.enqueue(
      url: book.url,
      savedDir: dir!.path,
      fileName: '${book.title}.pdf',
      showNotification: false,
      openFileFromNotification: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    print('Room Screen rebuilt');
    return BlocBuilder<RoomBloc, RoomState>(
      bloc: getIt<RoomBloc>(),
      builder: (context, state) {
        switch (state) {
          case RoomJoined(room: var room):
            return Scaffold(
              appBar: AppBar(
                title: Text(
                  'Room ${room.roomID}',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Builder(builder: (context) {
                      return ListView(
                        shrinkWrap: true,
                        children: room.users
                            .map((user) => UserTile(user: user))
                            .toList(),
                      );
                    }),
                    ElevatedButton(
                        onPressed: () => getIt<RoomBloc>().add(const Ready()),
                        child: const Text('Press to ready'))
                  ],
                ),
              ),
            );

          case RoomStarted():
          case RoomStateInitial():
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

class UserTile extends StatelessWidget {
  final RoomUser user;
  const UserTile({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(user.name,
            style: const TextStyle(color: Colors.white, fontSize: 23)),
        if (user.isLeader) const SizedBox(width: 5),
        if (user.isLeader)
          const Icon(
            Icons.star,
            color: Colors.amber,
          ),
        const Spacer(),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: user.isReady
                ? Tween<double>(begin: 0.5, end: 1).animate(animation)
                : Tween<double>(begin: 1.5, end: 1).animate(animation),
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          ),
          child: user.isReady
              ? const Icon(
                  Icons.check,
                  color: Colors.green,
                  key: Key('greenIcon'),
                )
              : const Icon(
                  Icons.close,
                  color: Colors.red,
                  key: Key('closeIcon'),
                ),
        ),
      ],
    );
  }
}
