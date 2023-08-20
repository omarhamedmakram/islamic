import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      canvasColor: Color(0xFFF8F8F8),
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
          titleMedium: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          titleSmall: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(color: Colors.white, fontSize: 25)),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Color(0xFFB7935F),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFB7935F),
          selectedIconTheme: IconThemeData(color: Colors.black, size: 35),
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 25),
          showUnselectedLabels: false,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      shadowColor: Color(0xFFB7935F),
      primaryColorLight: Color(0xFFAEA496),
      bottomSheetTheme: BottomSheetThemeData(
        shadowColor: Color(0xFFB7935F),
      ));

  static ThemeData darkTheme = ThemeData(
    primaryColorLight: Color(0xFF141A2E),
    textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 25, color: Colors.white, fontWeight: FontWeight.w500),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        titleSmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFACC1D),
        ),
        titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFACC1D),
        ),
        bodyMedium: TextStyle(color: Colors.white, fontSize: 25)),
    canvasColor: Color(0xFF141A2E),
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Color(0xFFFACC1D),
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF141A2E),
        selectedIconTheme: IconThemeData(color: Color(0xFFFACC1D), size: 35),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 25),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color(0xFFFACC1D))),
    shadowColor: Color(0xFF141A2E),
  );
}
