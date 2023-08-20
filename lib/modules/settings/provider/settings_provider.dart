import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String lenguge = 'en';

  changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  changeLanguge(String newlanguge) {
    if (newlanguge == lenguge) return;
    lenguge = newlanguge;
    notifyListeners();
  }

  bool isEnglish() {
    return lenguge == 'en';
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
