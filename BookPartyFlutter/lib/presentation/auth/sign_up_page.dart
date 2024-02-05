import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/auth/auth_bloc.dart';
import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../injection.dart';
import '../../theme.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/signinupphoto.jpg',
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
            child: const SignUpForm(),
          ),
        )
      ],
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

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
                        'Sign up',
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
                              const SizedBox(
                                width: double.infinity,
                                child: Text(
                                  "Looks like you don't have an account. \nLet's create a new account for you",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                height: 57,
                                child: TextFormField(
                                  decoration: const InputDecoration()
                                      .copyWith(hintText: 'Name'),
                                ),
                              ),
                              const SizedBox(height: 15),
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
                                  'Create Account',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Already have an account?  ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () => context.go('/sign_in'),
                                    child: const Text(
                                      'Log in',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: secondaryColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Expanded(
                                    child: Divider(
                                      color: Colors.grey,
                                      endIndent: 10,
                                    ),
                                  ),
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
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const SignInWithGoogle(),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
