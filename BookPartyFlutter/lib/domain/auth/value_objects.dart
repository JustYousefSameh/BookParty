import 'package:bookparty/domain/core/failures.dart';

import 'package:bookparty/domain/core/value_objects.dart';

import 'package:bookparty/domain/core/value_validators.dart';

import 'package:fpdart/fpdart.dart';


class EmailAddress extends ValueObject<String> {

  @override

  final Either<ValueFailure<String>, String> value;


  factory EmailAddress(String input) {

    return EmailAddress._(

      validateEmailAddress(input),

    );

  }


  const EmailAddress._(this.value);

}


class Password extends ValueObject<String> {

  @override

  final Either<ValueFailure<String>, String> value;


  factory Password(String input) {

    return Password._(

      validatePassword(input),

    );

  }


  const Password._(this.value);

}

