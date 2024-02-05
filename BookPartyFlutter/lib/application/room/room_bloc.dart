import 'package:bookparty/domain/auth/i_auth_facade.dart';


import 'package:bookparty/domain/auth/user.dart';


import 'package:bookparty/domain/room/i_room_repository.dart';


import 'package:bookparty/domain/room/room.dart';


import 'package:bookparty/infrastructure/room/room_user_dto.dart';


import 'package:flutter/foundation.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:fpdart/fpdart.dart';


import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:injectable/injectable.dart';


part 'room_event.dart';


part 'room_state.dart';


part 'room_bloc.freezed.dart';


@lazySingleton

class RoomBloc extends Bloc<RoomEvent, RoomState> {

  final IRoomRepository _roomRepository;


  final IAuthFacade _authFacade;


  RoomBloc(this._roomRepository, this._authFacade) : super(const Initial()) {

    on<CreateRoom>(

      (event, emit) async {

        final failureOrSuccess = await _roomRepository.createRoom();


        await failureOrSuccess.fold(

          (l) => null,

          (room) async =>

              await emit.forEach(room, onData: (data) => RoomJoined(data)),

        );

      },

    );


    on<JoinRoom>(

      (event, emit) async {

        final failureOrSuccess = await _roomRepository.joinRoom(event.roomID);


        await failureOrSuccess.fold(

          (l) => null,

          (room) async =>

              await emit.forEach(room, onData: (data) => RoomJoined(data)),

        );

      },

    );


    on<Ready>(

      (event, emit) async {

        Option<User> failureOrUser = await _authFacade.getSignedInUser();


        User user = failureOrUser.getOrElse(() => throw Exception());


        var roomUser = (state as RoomJoined)

            .room

            .users

            .singleWhere((element) => element.id == user.id);

        await _roomRepository.ready(RoomUserDto.fromDomain(roomUser));

      },

    );

  }

}

