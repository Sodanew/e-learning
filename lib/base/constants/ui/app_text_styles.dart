import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';

import 'app_theme.dart';

abstract final class AppTextStyles {
  const AppTextStyles._();

  static const _baseTextStyle = TextStyle(fontFamily: AppTheme.fontFamily);

  static TextStyle headingH4Bold = _baseTextStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    color: AppColors.current.grayscale100,
    height: 32 / 24,
  );

  static TextStyle bodyMediumSemiBold = _baseTextStyle.copyWith(
    fontSize: 14,
    color: AppColors.current.grayscale60,
    fontWeight: FontWeight.w600,
  );

  static TextStyle bodySmallSemiBold = _baseTextStyle.copyWith(
    fontSize: 12,
    color: AppColors.current.grayscale10,
    fontWeight: FontWeight.w600,
  );

    static TextStyle bodyLargeSemiBold = _baseTextStyle.copyWith(
    fontSize: 16,
    color: AppColors.current.grayscale10,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textBody16Medium = _baseTextStyle.copyWith(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
}
