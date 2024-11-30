import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 238, 238, 238),
    primaryColorLight: Colors.red,
    unselectedWidgetColor: Colors.white,
    secondaryHeaderColor: Colors.white,
    // switchTheme:
    //     SwitchThemeData(overlayColor: WidgetStatePropertyAll(Colors.red)),
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 14, color: Colors.black),
      bodyMedium: TextStyle(fontSize: 18, color: Colors.black),
      bodyLarge: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey[850],
    primaryColorLight: Colors.red,
    iconTheme: const IconThemeData(color: Colors.white),
    secondaryHeaderColor: Colors.black,
    unselectedWidgetColor: const Color.fromARGB(255, 37, 37, 38),
    textTheme: const TextTheme(
      bodySmall: TextStyle(fontSize: 14, color: Colors.white),
      bodyMedium: TextStyle(fontSize: 18, color: Colors.white70),
      bodyLarge: TextStyle(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    // Define other theme properties here
  );
}
