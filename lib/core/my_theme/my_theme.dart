import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      canvasColor: Color(0xFFB9AA91),
      textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          titleLarge: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: Color(0xFFB7935F),
      appBarTheme: AppBarTheme(
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
          TextStyle(fontWeight: FontWeight.bold, fontSize: 14)));
}
