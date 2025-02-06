import 'package:flutter/material.dart';

final themeData = ThemeData(
  brightness: Brightness.dark,
  fontFamily: "Poppins",
  scaffoldBackgroundColor: Color(0xff121212),
  cardTheme: CardTheme(
    margin: const EdgeInsets.all(20),
    color: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 0,
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.bold,
    ),
  ),
  
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      color: Colors.grey,
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    fillColor: Colors.white,
    filled: true,
  ),
);
