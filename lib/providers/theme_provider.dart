import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    final oldMode = _themeMode;
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    debugPrint('ThemeProvider: Toggled theme from $oldMode to $_themeMode');
    notifyListeners();
  }

  void setSystemTheme() {
    debugPrint('ThemeProvider: Setting theme to System');
    _themeMode = ThemeMode.system;
    notifyListeners();
  }
}
