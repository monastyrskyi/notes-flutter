import 'package:flutter/material.dart';

import 'material_themes.dart';

class ThemeProvider extends ChangeNotifier {
  AppTheme _customTheme = LightAppTheme();

  AppTheme get theme => _customTheme;

  void toggleBrightness() {
    _customTheme = _customTheme.brightness == Brightness.dark
        ? LightAppTheme()
        : DarkAppTheme();
    notifyListeners();
  }
}

abstract class AppTheme {
  Brightness get brightness;
  ThemeData get data;

  Color get primaryTextColor;

  Color get accentColor;

  Color get appBarForegroundColor;

  Color get noteItemBackgroundColor;
  Color get noteItemTitleColor;
  Color get noteItemTextColor;
  Color get noteItemCreatedAtColor;

  Color get editNoteHintTitleColor;
  Color get editNoteHintTextColor;
}

class LightAppTheme extends AppTheme {
  Brightness get brightness => Brightness.light;
  ThemeData get data => MaterialThemes.lightTheme;

  Color get primaryTextColor => Color.fromARGB(255, 35, 35, 35);

  Color get accentColor => Color.fromARGB(255, 249, 180, 15);

  Color get appBarForegroundColor => Color.fromARGB(255, 65, 65, 65);

  Color get noteItemBackgroundColor => Color.fromARGB(255, 255, 255, 255);
  Color get noteItemTitleColor => Color.fromARGB(255, 35, 35, 35);
  Color get noteItemTextColor => Color.fromARGB(255, 100, 100, 100);
  Color get noteItemCreatedAtColor => Color.fromARGB(255, 135, 135, 135);

  Color get editNoteHintTitleColor => Color.fromARGB(255, 135, 135, 135);
  Color get editNoteHintTextColor => Color.fromARGB(255, 135, 135, 135);
}

class DarkAppTheme extends AppTheme {
  Brightness get brightness => Brightness.dark;
  ThemeData get data => MaterialThemes.darkTheme;

  Color get primaryTextColor => Color.fromARGB(255, 255, 255, 255);

  Color get accentColor => Color.fromARGB(255, 249, 180, 15);

  Color get appBarForegroundColor => Color.fromARGB(255, 250, 255, 255);

  Color get noteItemBackgroundColor => Color.fromARGB(255, 50, 50, 50);
  Color get noteItemTitleColor => Color.fromARGB(255, 255, 255, 255);
  Color get noteItemTextColor => Color.fromARGB(255, 205, 205, 205);
  Color get noteItemCreatedAtColor => Color.fromARGB(255, 155, 155, 155);

  Color get editNoteHintTitleColor => Color.fromARGB(255, 155, 155, 155);
  Color get editNoteHintTextColor => Color.fromARGB(255, 155, 155, 155);
}
