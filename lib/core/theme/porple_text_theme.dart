import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/core/theme/porple_theme.dart';
import 'package:portfolio/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

final PorpleTheme _theme = PorpleTheme();

class PorpleTextTheme extends TextTheme {
  /// true if mode is dark
  final bool isDark;

  const PorpleTextTheme(this.isDark);

  @override
  TextStyle? get bodyLarge => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textGrey,
      fontWeight: FontWeight.w500,
      fontSize: 18);

  @override
  TextStyle? get bodyMedium => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textGrey,
      fontWeight: FontWeight.w400,
      fontSize: 16);

  @override
  TextStyle? get bodyText1 => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textBlack,
      fontWeight: FontWeight.w400,
      fontSize: 14);

  @override
  TextStyle? get bodyText2 => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textGrey,
      fontWeight: FontWeight.w400,
      fontSize: 14);

  // @override
  // TextStyle? get button => throw UnimplementedError();

  // @override
  // TextStyle? get caption => throw UnimplementedError();

  // @override
  // TextStyle? get displayLarge => throw UnimplementedError();

  // @override
  // TextStyle? get displayMedium => throw UnimplementedError();

  // @override
  // TextStyle? get displaySmall => throw UnimplementedError();

  // @override
  // TextStyle? get headline1 => throw UnimplementedError();

  // @override
  // TextStyle? get headline2 => throw UnimplementedError();

  // @override
  // TextStyle? get headline3 => throw UnimplementedError();

  @override
  TextStyle? get headline4 => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textBlack,
      fontWeight: FontWeight.w700,
      fontSize: 20);

  @override
  TextStyle? get headline5 => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textGrey,
      fontWeight: FontWeight.w400,
      fontSize: 20);

  // @override
  // TextStyle? get headline6 => throw UnimplementedError();

  // @override
  // TextStyle? get headlineLarge => throw UnimplementedError();

  // @override
  // TextStyle? get headlineMedium => throw UnimplementedError();

  // @override
  // TextStyle? get headlineSmall => throw UnimplementedError();

  // @override
  // TextStyle? get labelLarge => throw UnimplementedError();

  // @override
  // TextStyle? get labelMedium => throw UnimplementedError();

  // @override
  // TextStyle? get labelSmall => throw UnimplementedError();

  // @override
  // TextStyle? get overline => throw UnimplementedError();

  // @override
  // TextStyle? get subtitle1 => throw UnimplementedError();

  // @override
  // TextStyle? get subtitle2 => throw UnimplementedError();

  @override
  TextStyle? get titleLarge => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textBlack,
      fontWeight: FontWeight.w500,
      fontSize: 64);

  @override
  TextStyle? get titleMedium => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textGrey,
      fontWeight: FontWeight.w400,
      fontSize: 22);

  @override
  TextStyle? get titleSmall => TextStyle(
      fontFamily: _theme.font,
      color: AppColors.textGrey,
      fontWeight: FontWeight.w700,
      fontSize: 16);
}
