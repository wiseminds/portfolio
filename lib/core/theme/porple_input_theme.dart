import 'package:flutter/material.dart';

import 'porple_theme.dart';

final PorpleTheme _theme = PorpleTheme();

class PorpleInputTheme extends InputDecorationTheme {
  final bool isDark;

  const PorpleInputTheme(this.isDark);

  Color get borderColor => isDark ? _theme.borderDark : _theme.borderLight;

  TextTheme get textTheme => isDark ? _theme.textThemeDark : _theme.textTheme;

  InputBorder get _base => OutlineInputBorder(
      borderRadius: BorderRadius.circular(_theme.inputRadius),
      borderSide: BorderSide(color: borderColor.withOpacity(.54), width: 1));

  @override
  bool get alignLabelWithHint => true;

  @override
  InputBorder? get border => _base;

  // @override
  // // TODO: implement constraints
  // BoxConstraints? get constraints => throw UnimplementedError();

  @override
  EdgeInsetsGeometry? get contentPadding =>
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0);

  @override
  TextStyle? get counterStyle => const TextStyle(fontSize: .0000);

  @override
  InputBorder? get disabledBorder => _base.copyWith(
      borderSide: BorderSide(color: borderColor.withOpacity(.34), width: 1));

  @override
  InputBorder? get enabledBorder =>
      _base.copyWith(borderSide: BorderSide(color: borderColor, width: 1));

  @override
  InputBorder? get errorBorder =>
      _base.copyWith(borderSide: BorderSide(color: _theme.error, width: 1));

  @override
  int? get errorMaxLines => 2;

  @override
  TextStyle? get errorStyle =>
      textTheme.bodyText1?.copyWith(color: _theme.error);

  @override
  Color? get fillColor => isDark ? _theme.inputFillDark : _theme.inputFillLight;

  @override
  bool get filled => _theme.inputFilled;

  @override
  FloatingLabelAlignment get floatingLabelAlignment =>
      FloatingLabelAlignment.start;

  @override
  FloatingLabelBehavior get floatingLabelBehavior =>
      FloatingLabelBehavior.never;

  // @override
  // TextStyle? get floatingLabelStyle => throw UnimplementedError();

  @override
  Color? get focusColor => _theme.primary;

  @override
  InputBorder? get focusedBorder =>
      _base.copyWith(borderSide: BorderSide(color: _theme.primary, width: 1));

  @override
  InputBorder? get focusedErrorBorder =>
      _base.copyWith(borderSide: BorderSide(color: _theme.error, width: 1.5));

  @override
  int? get helperMaxLines => 2;

  @override
  TextStyle? get helperStyle => textTheme.bodyText2;

  @override
  TextStyle? get hintStyle => textTheme.bodyText2?.copyWith(height: 2);

  @override
  Color? get hoverColor => _theme.accent;

  // @override
  // Color? get iconColor => throw UnimplementedError();

  // @override
  // // TODO: implement isCollapsed
  // bool get isCollapsed => throw UnimplementedError();

  @override
  bool get isDense => false;

  @override
  TextStyle? get labelStyle => textTheme.bodyText1;

  // @override
  // Color? get prefixIconColor => throw UnimplementedError();

  // @override
  // TextStyle? get prefixStyle => throw UnimplementedError();

  // @override
  // Color? get suffixIconColor => throw UnimplementedError();

  // @override
  // TextStyle? get suffixStyle => throw UnimplementedError();

}
