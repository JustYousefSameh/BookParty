import 'package:bookparty/firebase_options.dart';
import 'package:bookparty/injection.dart';
import 'package:bookparty/theme.dart';
import 'package:bookparty/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Book Party',
      theme: bookPartyTheme,
      themeMode: ThemeMode.dark,
      routerConfig: router,
    );
  }
}
