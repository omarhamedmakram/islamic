import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;

  changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
