import 'package:flutter/material.dart';

abstract final class AppTheme {
  const AppTheme._();

  static const fontFamily = 'GoogleSans';

  static const _textTheme = TextTheme(
    bodyMedium: TextStyle(fontSize: 14),
  );

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
        textTheme: _textTheme,
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
        textTheme: _textTheme,
      );
}
