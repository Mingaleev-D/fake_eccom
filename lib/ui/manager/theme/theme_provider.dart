import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  static const String themeStatus = 'THEME_STATUS';
  bool _darkTheme = false;

  bool get getIsDarkTheme => _darkTheme;

  ThemeProvider() {
    getThemeStatus();
  }

  Future<void> setDarkTheme({required bool themeValue}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(themeStatus, themeValue);
    _darkTheme = themeValue;
    notifyListeners();
  }

  Future<bool> getThemeStatus() async {
    final prefs = await SharedPreferences.getInstance();
    _darkTheme = prefs.getBool(themeStatus) ?? false;
    notifyListeners();
    return _darkTheme;
  }
}
