import 'responsive_types.dart';

class ResponsiveSettings {
  final double desktop, tablet, largeTablet, veryLarge;

  ResponsiveSettings(
      {this.desktop = 1200,
      this.largeTablet = 900,
      this.tablet = 600,
      this.veryLarge = 1080});

  ResponsiveTypes type(double size) {
    if (size < tablet) return ResponsiveTypes.mobile;
    if (size < largeTablet) return ResponsiveTypes.tablet;
    if (size < desktop) return ResponsiveTypes.largeTablet;
    if (size < veryLarge) return ResponsiveTypes.desktop;
    return ResponsiveTypes.veryLarge;
  }
}
