import 'package:flutter/material.dart';

const colorsList = <Color>[
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.brown,
  Colors.purple
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
        assert(selectedColor < colorsList.length - 1,
            'Selected color must be greater than 0');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorsList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
