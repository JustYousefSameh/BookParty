import 'package:bookparty/application/auth/auth_bloc.dart';
import 'package:bookparty/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to Tokoto, Let’s shop!',
      'image': 'assets/images/splash1.png'
    },
    {
      'text':
          'We help people conect with store \naround United State of America',
      'image': 'assets/images/splash2.png'
    },
    {
      'text': 'We show the easy way to shop. \nJust stay at home with us',
      'image': 'assets/images/splash3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          print(state);
          switch (state) {
            case Initial():
              () {};
            case Authenticated():
              context.go('/home');
            case Unauthenticated():
              context.go('/sign_in');
          }
          // state.map(
          //   initial: (_) {},
          //   authenticated: (_) => context.go('/home'),
          //   unauthenticated: (_) => context.go('/sign_in'),
          // );
        },
        builder: (context, state) => Scaffold(
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const Text(
                    'Welcome to Book Party',
                    style: TextStyle(fontSize: 20),
                  ),
                  GestureDetector(
                    child: const Text('go to singin '),
                    onTap: () => context.go('/sign_in'),
                  ),
                  GestureDetector(
                    child: const Text('logout'),
                    onTap: () => context
                        .read<AuthBloc>()
                        .add(const AuthEvent.signedOut()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
