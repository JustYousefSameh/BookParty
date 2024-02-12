import 'package:flutter/material.dart';

const secondaryColor = Color(0xFFCDE7BE);
const backgroundColor = Color(0xFF181A1A);

final bookPartyTheme = ThemeData(
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: const AppBarTheme(
    backgroundColor: backgroundColor,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.white, //change your color here
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color.fromARGB(255, 250, 250, 250),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
