import 'dart:ui';

import 'package:bookparty/application/auth/auth_bloc.dart';
import 'package:bookparty/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:bookparty/injection.dart';
import 'package:bookparty/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/signinimage.jpg',
          fit: BoxFit.fitHeight,
          height: MediaQuery.of(context).size.height,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: MultiBlocProvider(
            providers: [
              BlocProvider<SignInFormBloc>(
                create: (context) => getIt<SignInFormBloc>(),
              ),
              BlocProvider(
                create: (context) => getIt<AuthBloc>(),
              ),
            ],
            child: const SignInForm(),
          ),
        ),
      ],
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (either) => either.fold(
            (l) => print(l),
            (r) {
              context.go('/home');
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
            },
          ),
        );
      },
      builder: (context, state) {
        return SafeArea(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(113, 59, 59, 59),
                        ),
                        child: Form(
                          autovalidateMode: state.showErrorMessages
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 57,
                                child: TextFormField(
                                  decoration: const InputDecoration()
                                      .copyWith(hintText: 'Email'),
                                ),
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                height: 57,
                                child: TextFormField(
                                  decoration: const InputDecoration()
                                      .copyWith(hintText: 'Password'),
                                ),
                              ),
                              const SizedBox(height: 15),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  minimumSize: const Size(double.infinity, 57),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  backgroundColor: secondaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                    // side: const BorderSide(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              GestureDetector(
                                child: const Text(
                                  'Forgot Password?',
                                  style: TextStyle(color: secondaryColor),
                                ),
                              ),
                              const SizedBox(height: 25),
                              const Row(
                                children: [
                                  Expanded(
                                      child: Divider(
                                    color: Colors.grey,
                                    endIndent: 10,
                                  )),
                                  Text(
                                    'Or',
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey,
                                      indent: 10,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 25),
                              const SignInWithGoogle(),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Don't have an account?  ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () => context.go('/sign_up'),
                                    child: const Text(
                                      'Sign up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: secondaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 57),
        padding: const EdgeInsets.symmetric(vertical: 8),
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () =>
          context.read<SignInFormBloc>().add(const SignInWithGooglePressed()),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                'assets/icons/google_icon.png',
                width: 30,
              ),
            ),
          ),
          // const SizedBox(width: 10),
          const Text(
            'Continue with Google',
            style: TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
    );
  }
}
