import 'package:portfolio/modules/four04/widgets/four04_mobile.dart';
import 'package:portfolio/router/app_route.dart';
import 'package:portfolio/shared/responsive/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'widgets/four04_desktop.dart';

class Four04 extends StatelessWidget implements AppRoute {
  const Four04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
        desktop: Four04Desktop(),
        mobile: Four04Mobile(),
        largeTablet: Four04Mobile());
  }

  @override
  String get pattern => '404';

  @override
  Widget builder(BuildContext context, List<String> paths,
      Map<String, dynamic> parameters) {
    return this;
  }
}
