import 'package:bookparty/domain/auth/auth_failure.dart';
import 'package:bookparty/domain/auth/i_auth_facade.dart';
import 'package:bookparty/domain/auth/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@lazySingleton
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) => emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authFailureOrSuccessOption: none(),
        )));

    on<PasswordChanged>((event, emit) => emit(state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSuccessOption: none(),
        )));

    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ));

        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        );
      }

      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });

    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      Either<AuthFailure, Unit>? failureOrSuccess;

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ));

        failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress,
          password: state.password,
        );
      }

      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ));
    });

    on<SignInWithGooglePressed>((event, emit) async {
      emit(state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ));
      final failureOrSuccess = await _authFacade.signInWithGoogle();
      emit(state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ));
    });
  }

  // Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
  //   Future<Either<AuthFailure, Unit>> Function({
  //     required EmailAddress emailAddress,
  //     required Password password,
  //   }) forwardedCall,
  // ) async* {
  //   Either<AuthFailure, Unit>? failureOrSuccess;

  //   final isEmailValid = state.emailAddress.isValid();
  //   final isPasswordValid = state.password.isValid();

  //   if (isEmailValid && isPasswordValid) {
  //     yield state.copyWith(
  //       isSubmitting: true,
  //       authFailureOrSuccessOption: none(),
  //     );

  //     failureOrSuccess = await forwardedCall(
  //       emailAddress: state.emailAddress,
  //       password: state.password,
  //     );
  //   }

  //   yield state.copyWith(
  //     isSubmitting: false,
  //     showErrorMessages: true,
  //     authFailureOrSuccessOption: optionOf(failureOrSuccess),
  //   );
  // }
}
