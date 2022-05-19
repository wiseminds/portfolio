
import 'responsive_types.dart';

class ResponsiveValue<T> {
  final T desktop;
  final T? mobile, tablet, veryLarge, largeTablet;
  const ResponsiveValue(
      {required this.desktop,
      this.mobile,
      this.tablet,
      this.largeTablet,
      this.veryLarge});

  T fromType(ResponsiveTypes type) {
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
