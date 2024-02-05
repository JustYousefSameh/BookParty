// import 'dart:math';
// import 'package:bookparty/domain/auth/i_auth_facade.dart';
// import 'package:bookparty/domain/auth/user.dart';
// import 'package:bookparty/domain/core/value_objects.dart';
// import 'package:bookparty/domain/room/i_room_repository.dart';
// import 'package:bookparty/domain/room/room.dart';
// import 'package:bookparty/domain/room/room_failure.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:fpdart/fpdart.dart';
// import 'package:injectable/injectable.dart';

// class FirebaseRoomRepository implements IRoomRepository {
//   final FirebaseFirestore _firebaseFirestore;
//   final IAuthFacade _authFacade;

//   FirebaseRoomRepository({
//     required FirebaseFirestore firebaseFirestore,
//     required IAuthFacade authFacade,
//   })  : _firebaseFirestore = firebaseFirestore,
//         _authFacade = authFacade;

//   @override
//   Future<Either<RoomFailure, Stream<Room>>> createRoom() async {
//     final optionUser = await _authFacade.getSignedInUser();
//     final user = optionUser.getOrElse(() => throw Exception);

//     Random random = Random();
//     int roomID = random.nextInt(9999);

//     final data = {
//       'roomid': roomID,
//       'users': [
//         {
//           'name': user.name,
//           'id': user.id.getOrCrash(),
//         }
//       ]
//     };

//     await _firebaseFirestore
//         .collection('rooms')
//         .doc(roomID.toString())
//         .set(data);

//     return right(Room(roomID: roomID, listOfUsers: [user]));
//   }

//   @override
//   Future<Either<RoomFailure, Stream<Room>>> joinRoom(int roomID) async {
//     try {
//       final roomDocument = await _firebaseFirestore
//           .collection('rooms')
//           .doc(roomID.toString())
//           .get();

//       final listOfUsers =
//           List<Map<String, dynamic>>.from(roomDocument.data()?['users']);

//       print(listOfUsers);

//       final room = Room(
//         roomID: roomID,
//         listOfUsers: listOfUsers
//             .map(
//               (userData) => User(
//                 id: UniqueId.fromUniqueString(userData['id']),
//                 name: userData['name'],
//               ),
//             )
//             .toList(),
//       );

//       return right(room);
//     } catch (e) {
//       print(e.toString());
//       return left(const RoomFailure.roomNotFound());
//     }
//   }
// }
