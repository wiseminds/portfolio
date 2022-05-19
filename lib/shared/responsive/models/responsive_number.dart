import 'package:portfolio/shared/responsive/models/responsive_types.dart';

class ResponsiveNumber {
  final double desktop;
  final double? mobile, tablet, veryLarge, largeTablet;
  const ResponsiveNumber(
      {required this.desktop,
      this.mobile,
      this.tablet,
      this.largeTablet,
      this.veryLarge});

  double fromType(ResponsiveTypes type) {
    switch (type) {
      case ResponsiveTypes.mobile:
        return mobile ?? tablet ?? largeTablet ?? desktop;
      case ResponsiveTypes.tablet:
        return tablet ?? largeTablet ?? desktop;
      case ResponsiveTypes.largeTablet:
        return largeTablet ?? desktop;
      case ResponsiveTypes.veryLarge:
        return veryLarge ?? desktop;

      case ResponsiveTypes.desktop:
      default:
        return desktop;
    }
  }
}
