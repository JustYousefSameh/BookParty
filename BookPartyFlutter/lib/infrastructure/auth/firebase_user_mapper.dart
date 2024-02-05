import 'dart:io';

import 'package:bookparty/domain/auth/user.dart';
import 'package:bookparty/domain/core/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      name: displayName!,
    );
  }
}

extension FileExtention on FileSystemEntity {
  String get name {
    return path.split(Platform.pathSeparator).last;
  }
}

extension StringExtention on String {
  String get removeExtenstion {
    return substring(0, lastIndexOf('.'));
  }
}
