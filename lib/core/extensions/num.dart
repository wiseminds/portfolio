import 'package:flutter/material.dart';

extension DoubleExt on double {
  BorderRadius get toBorderRadius => BorderRadius.circular(this);

  /// a spacer widget
  Spacer get s => const Spacer();

  /// convert a double field to SizedBox with its height
  SizedBox get h => SizedBox(height: this);

  /// convert a double field to SizedBox with its widget
  SizedBox get w => SizedBox(width: this);
}

extension IntExt on int {
  /// returns date in milliseconds as current Time + (this represented as seconds)
  int get secondsToMilliseconds =>
      DateTime.now().add(Duration(seconds: this)).millisecondsSinceEpoch;

  /// convert an integer to duration in milliseconds
  Duration get toDurationInMilliseconds => Duration(milliseconds: this);

  /// convert an integer to duration in microseconds
  Duration get toDurationInMicroseconds => Duration(microseconds: this);

  /// convert an integer to duration in seconds
  Duration get toDurationInSeconds => Duration(seconds: this);

  /// compares time in milliseconds against current timestamp
  /// and returns true if time is past
  bool get isPast => DateTime.now().millisecondsSinceEpoch > this;
  // double get height => ScreenUtil().setHeight(this);

  FontWeight get toFontWeight {
    switch (this) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w400;
      case 500:
        return FontWeight.w500;
      case 600:
        return FontWeight.w600;
      case 700:
        return FontWeight.bold;
      case 800:
        return FontWeight.w800;
      case 900:
        return FontWeight.w900;
      default:
        return FontWeight.normal;
    }
  }
}
