import 'package:portfolio/shared/responsive/models/responsive_types.dart';
import 'package:portfolio/shared/responsive/providers/responsive_settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

extension B on BuildContext {
  ResponsiveTypes get deviceType =>
      read<ResponsiveSettingsProvider>().value.type(size.width);

  /// current context's height
  double get appHeight => size.height;

  /// current context's width
  double get appWidth => size.width;

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  /// caption text style same as [Theme.of(this).textTheme.caption]
  TextStyle? get caption => Theme.of(this).textTheme.caption;

  /// headline5 text style same as [Theme.of(this).textTheme.headline5]
  TextStyle? get headline5 => Theme.of(this).textTheme.headline5;

  /// headline4 text style same as [Theme.of(this).textTheme.headline4]
  TextStyle? get headline4 => Theme.of(this).textTheme.headline4;

  /// headline5 text style same as [Theme.of(this).textTheme.headline3]
  TextStyle? get headline3 => Theme.of(this).textTheme.headline3;

  /// bodyText1 text style same as [Theme.of(this).textTheme.bodyText1]
  TextStyle? get bodyText1 => Theme.of(this).textTheme.bodyText1;
  TextStyle? get subtitle1 => Theme.of(this).textTheme.subtitle1;

  /// bodyText2 text style same as [Theme.of(this).textTheme.bodyText2]
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyText2 => Theme.of(this).textTheme.bodyText2;
  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  InputDecorationTheme? get inputDecorationTheme =>
      Theme.of(this).inputDecorationTheme;

  Color get borderColor =>
      inputDecorationTheme!.enabledBorder!.borderSide.color;
  Color get backgroundColor => Theme.of(this).backgroundColor;
  Color get primaryColor => Theme.of(this).primaryColor;
  Color get cardColor => Theme.of(this).cardColor;
  Color get canvasColor => Theme.of(this).canvasColor;
  Color get iconColor => Theme.of(this).iconTheme.color!;
  Size get size => MediaQuery.of(this).size;

  Color get cardColorAlt =>
      isDark ? const Color(0xFF1E1E20) : const Color(0xffFAFAFB);
  Color get cardBorderAlt =>
      isDark ? const Color(0xFF4C4C5A) : const Color(0xffE9ECEE);
}
