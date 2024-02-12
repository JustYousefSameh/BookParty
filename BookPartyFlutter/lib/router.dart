import 'package:bookparty/presentation/auth/sign_in_page.dart';
import 'package:bookparty/presentation/auth/sign_up_page.dart';
import 'package:bookparty/presentation/home/home.dart';
import 'package:bookparty/presentation/reading/reading_screen.dart';
import 'package:bookparty/presentation/room/room_screen.dart';
import 'package:bookparty/presentation/splash.dart';
import 'package:flutter/material.dart';
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
    ),
    GoRoute(
      name: 'RoomScreen',
      path: '/home/roomscreen',
      builder: (context, state) => const RoomScreen(),
    ),
    GoRoute(
      name: 'ReadingScreen',
      path: '/home/roomscreen/readingscreen',
      builder: (context, state) => const PdfViewScreen(),
    ),
  ],
);

extension NavigatorStateExtension on NavigatorState {
  // void pushNamedIfNotCurrent( String routeName, {Object arguments} ) {
  //   if (!isCurrent(routeName)) {
  //     pushNamed( routeName, arguments: arguments );
  //   }
  // }

  bool isCurrent(String routeName) {
    bool isCurrent = false;
    popUntil((route) {
      print(route.settings.name);
      if (route.settings.name == routeName) {
        isCurrent = true;
      }
      return true;
    });
    return isCurrent;
  }
}
