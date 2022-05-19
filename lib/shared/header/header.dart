import 'package:portfolio/shared/responsive/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'widgets/header_desktop.dart';
import 'widgets/header_mobile.dart';
import 'widgets/header_tablet.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveBuilder(
      desktop: HeaderDesktop(),
      tablet: HeaderTablet(),
      // largeTablet: HeaderTablet(),
      mobile: HeaderMobile(),
    );
  }
}
