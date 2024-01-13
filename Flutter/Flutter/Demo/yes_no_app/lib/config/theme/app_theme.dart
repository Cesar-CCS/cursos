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
  ThemeData theme() {
    return ThemeData();
  }
}
