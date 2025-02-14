import 'package:flutter/material.dart';

abstract final class AppTheme {
  const AppTheme._();

  static const fontFamily = 'Urbanist';

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
      );
}
