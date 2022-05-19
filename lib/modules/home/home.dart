import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/modules/home/widgets/home_mobile.dart';
import 'package:portfolio/modules/home/widgets/home_tablet.dart';
import 'package:portfolio/router/app_route.dart';
import 'package:portfolio/shared/responsive/widgets/responsive_builder.dart';

import 'widgets/home_desktop.dart';

class Home extends StatelessWidget implements AppRoute {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.backgroundColor,
      child: const ResponsiveBuilder(
          desktop: HomeDesktop(),
          mobile: HomeMobile(),
          largeTablet: HomeTablet()),
    );
  }

  @override
  String get pattern => '';

  @override
  Widget builder(BuildContext context, List<String> paths,
      Map<String, dynamic> parameters) {
    return this;
  }
}
