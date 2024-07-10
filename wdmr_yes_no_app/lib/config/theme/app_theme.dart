import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6F0080);

const List<Color> colorThemes = [
  _customColor,
  Color.fromRGBO(211, 172, 255, 1),
  Color.fromARGB(255, 255, 139, 243),
  Color.fromARGB(255, 255, 123, 242),
  Color.fromARGB(255, 128, 162, 255),
  Color.fromARGB(255, 129, 234, 255),
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0});

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: colorThemes[selectedColor],
    );
  }
}
