import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData().copyWith(
      // Color primario
      primaryColor: primary,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: Colors.green),
      ),
      // AppBar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      //Floating Action button theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: Colors.green,
        shape: const StadiumBorder(),
        elevation: 0,
      )),

      // Input decoration theme

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primary,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));
}
