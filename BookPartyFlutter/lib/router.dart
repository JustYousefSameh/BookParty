import 'package:bookparty/presentation/auth/sign_in_page.dart';
import 'package:bookparty/presentation/auth/sign_up_page.dart';
import 'package:bookparty/presentation/home/home.dart';
import 'package:bookparty/presentation/splash.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, state) => const SignUpPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => Home(),
    )
  ],
);
