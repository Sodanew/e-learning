import 'package:flutter/material.dart';

class AppColors {
  final Color primary;
  final Color secondary;
  final Color success;
  final Color error;
  final Color warning;
  final Color white;
  final Color line;
  final Color lineDark;
  final Color grayscale10;
  final Color grayscale20;
  final Color grayscale30;
  final Color grayscale40;
  final Color grayscale50;
  final Color grayscale60;
  final Color grayscale70;
  final Color grayscale80;
  final Color grayscale90;
  final Color grayscale100;

  static late AppColors current;

  AppColors({
    required this.primary,
    required this.secondary,
    required this.success,
    required this.error,
    required this.warning,
    required this.white,
    required this.line,
    required this.lineDark,
    required this.grayscale10,
    required this.grayscale20,
    required this.grayscale30,
    required this.grayscale40,
    required this.grayscale50,
    required this.grayscale60,
    required this.grayscale70,
    required this.grayscale80,
    required this.grayscale90,
    required this.grayscale100,
  });

  static AppColors of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    current = appColor;

    return current;
  }

  static get defaultAppColor => AppColors(
        // primary: const Color(0xff3FAC5C),
        primary: const Color(0xff00CC9A),
        secondary: const Color(0xffFE970F),
        success: const Color(0xff00C566),
        error: const Color(0xffFF4747),
        warning: const Color(0xffFACC15),
        white: const Color(0xffFFFFFF),
        line: const Color(0xffE3E7EC),
        lineDark: const Color(0xff4A4A65),
        grayscale10: const Color(0xffFDFDFD),
        grayscale20: const Color(0xffECF1F6),
        grayscale30: const Color(0xffE3E9ED),
        grayscale40: const Color(0xffD1D8DD),
        grayscale50: const Color(0xffBFC6CC),
        grayscale60: const Color(0xff9CA4AB),
        grayscale70: const Color(0xff78828A),
        grayscale80: const Color(0xff66707A),
        grayscale90: const Color(0xff434E58),
        grayscale100: const Color(0xff171725),
      );
}

enum AppThemeType { light, dark }

extension AppThemeDataExtension on ThemeData {
  static final Map<AppThemeType, AppColors> _appColorMap = {};

  void addAppColor(AppThemeType type, AppColors appColor) {
    _appColorMap[type] = appColor;
  }

  AppColors get appColor {
    return _appColorMap[AppThemeSetting.currentAppThemeType] ?? AppColors.defaultAppColor;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();
  static AppThemeType currentAppThemeType = AppThemeType.light;
}
