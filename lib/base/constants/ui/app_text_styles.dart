import 'package:flutter/material.dart';
import 'package:flutter_bloc_template/base/constants/ui/app_colors.dart';

import 'app_theme.dart';

abstract final class AppTextStyles {
  const AppTextStyles._();

  static const _baseTextStyle = TextStyle(fontFamily: AppTheme.fontFamily);

  static TextStyle h1Bold = _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 48, color: AppColors.current.greyscale900);
  static TextStyle h2Bold = _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 40, color: AppColors.current.greyscale900);
  static TextStyle h3Bold = _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 32, color: AppColors.current.greyscale900);
  static TextStyle h4Bold = _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.current.greyscale900);
  static TextStyle h5Bold = _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 20, color: AppColors.current.greyscale900);
  static TextStyle h6Bold = _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.current.greyscale900);

  static TextStyle bodyXLargeBold =
      _baseTextStyle.copyWith(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.current.greyscale900);
  static TextStyle bodyXLargeSemiBold =
      _baseTextStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 18, color: AppColors.current.greyscale900);
  static TextStyle bodyXLargeRegular =
      _baseTextStyle.copyWith(fontWeight: FontWeight.w400, fontSize: 18, color: AppColors.current.greyscale900);
}
