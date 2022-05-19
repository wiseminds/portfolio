import 'package:portfolio/constants/app_colors.dart';
import 'package:portfolio/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import 'porple_input_theme.dart';
import 'porple_text_theme.dart';

class PorpleTheme {
  String get font => FontFamily.roboto;
  Color get primary => AppColors.primary;
  Color get accent => AppColors.accent;
  Color get backgroundColor => const Color(0xffFEFDFF);
  Color get backgroundColorDark => AppColors.backgroundDark;
  Color get cardColor => AppColors.card;
  Color get cardColorDark => AppColors.cardDark;

  Color get borderLight => AppColors.border;
  Color get borderDark => AppColors.borderDark;

  Color get inputFillLight => AppColors.inputFill;
  Color get inputFillDark => AppColors.inputFillDark;
  Color get error => Colors.red;

  bool get inputFilled => true;
  double get inputRadius => 0.0;

  TextTheme get textTheme => const PorpleTextTheme(false);
  TextTheme get textThemeDark => const PorpleTextTheme(true);

  ThemeData get dark => ThemeData.dark().copyWith(
      primaryColor: primary,
      textTheme: const PorpleTextTheme(true),
      cardColor: cardColorDark,
      canvasColor: cardColorDark,
      backgroundColor: backgroundColorDark,
      inputDecorationTheme: const PorpleInputTheme(true));

  ThemeData get light => ThemeData.light().copyWith(
      textTheme: const PorpleTextTheme(false),
      primaryColor: primary,
      backgroundColor: backgroundColor,
      cardColor: cardColor,
      colorScheme: ColorScheme.light(primary: primary, onPrimary: Colors.white),
      canvasColor: AppColors.canvas,
      inputDecorationTheme: const PorpleInputTheme(false));
}
