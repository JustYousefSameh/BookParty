import 'package:bookparty/application/room/room_bloc.dart';
import 'package:bookparty/domain/auth/user.dart';
import 'package:bookparty/domain/room/room.dart';
import 'package:bookparty/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoomScreen extends StatelessWidget {
  final int roomID;
  const RoomScreen({super.key, required this.roomID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Room $roomID',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<RoomBloc>(),
        child: BlocBuilder<RoomBloc, RoomState>(
          builder: (context, state) {
            print('Got data $state');
            switch (state) {
              case RoomJoined(room: var room):
                print(room.users);
                return Scaffold(
                  body: Column(
                    children: [
                      ListView(
                        shrinkWrap: true,
                        children: room.users
                            .map(
                              (user) => ListTile(
                                title: Text(user.name,
                                    style:
                                        const TextStyle(color: Colors.white)),
                                trailing: AnimatedSwitcher(
                                  duration: const Duration(seconds: 10),
                                  transitionBuilder: (child, animation) =>
                                      RotationTransition(
                                    turns: !user.isReady
                                        ? Tween<double>(begin: 1, end: 0.75)
                                            .animate(animation)
                                        : Tween<double>(begin: 0.75, end: 1)
                                            .animate(animation),
                                    child: ScaleTransition(
                                        scale: animation, child: child),
                                  ),
                                  child: Icon(
                                    user.isReady ? Icons.check : Icons.close,
                                    color: user.isReady
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      ElevatedButton(
                          onPressed: () =>
                              context.read<RoomBloc>().add(const Ready()),
                          child: const Text('Ready'))
                    ],
                  ),
                );

              case Initial():
                return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
