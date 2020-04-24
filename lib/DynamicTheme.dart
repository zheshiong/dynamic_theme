import 'package:flutter/material.dart';

enum DTheme { theme1, theme2, theme3 }

class DynamicTheme with ChangeNotifier {
  ThemeData _themeData;

  DynamicTheme(this._themeData);

  getTheme() => _themeData;

  setTheme(DTheme theme) {
    switch (theme) {
      case DTheme.theme1:
        // TODO: Handle this case.
        _themeData = ThemeData.dark();
        notifyListeners();
        break;
      case DTheme.theme2:
        // TODO: Handle this case.
        _themeData = ThemeData.light();
        notifyListeners();
        break;
      case DTheme.theme3:
        // TODO: Handle this case.
        _themeData = ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.yellow,
          brightness: Brightness.dark,
          backgroundColor: const Color(0xFF212121),
          accentColor: Colors.red,
          accentIconTheme: IconThemeData(color: Colors.black),
          dividerColor: Colors.black12,
        );
        notifyListeners();
        break;
    }
  }
}
