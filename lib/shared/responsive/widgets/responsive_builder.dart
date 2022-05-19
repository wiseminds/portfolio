import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/shared/responsive/models/responsive_types.dart';
import 'package:portfolio/shared/responsive/providers/responsive_settings_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// this is
class ResponsiveBuilder extends StatelessWidget {
  final Widget desktop;
  final Widget? mobile, tablet, veryLarge, largeTablet;
  const ResponsiveBuilder(
      {Key? key,
      required this.desktop,
      this.mobile,
      this.tablet,
      this.largeTablet,
      this.veryLarge})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1080 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1080;

  @override
  Widget build(BuildContext context) {
    // context.watch<ResponsiveSettingsProvider>().value;
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (kDebugMode) print(constraints.maxWidth);
        // final type = responsive.type(constraints.maxWidth);
        final type = context.deviceType;

        if (kDebugMode) print(type);

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
      }),
    );
  }
}
