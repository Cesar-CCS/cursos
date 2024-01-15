import 'package:flutter/material.dart';

const Color _customGreen = Color(0xFFB9E5CC);
const Color _customBlue = Color(0xFF1B0766);

const List<Color> _colorThemes = [
  Colors.red,
  Color.fromARGB(253, 159, 151, 151),
  Colors.green,
  _customBlue,
  _customGreen,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
