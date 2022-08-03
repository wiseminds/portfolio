import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/shared/header/header.dart';
import 'package:portfolio/shared/responsive/models/responsive_number.dart';
import 'package:portfolio/shared/responsive/widgets/responsive_builder.dart';
// import 'package:portfolio/shared/sidemenu/side_menu.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const ResponsiveBuilder(
        desktop: SizedBox(),
        tablet: SizedBox(),
      ),
      Container(
          width: 1,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xff999999)),
      Expanded(
        child: Scaffold(
            drawer: const ResponsiveBuilder(
              desktop: SizedBox(),
              tablet: SizedBox(),
            ),
            backgroundColor: context.canvasColor,
            appBar: PreferredSize(
                child: const Header(),
                preferredSize: Size(
                    10,
                    const ResponsiveNumber(desktop: 107, mobile: 70)
                        .fromType(context.deviceType))),
            body: child
            // const Footer(),
            ),
      ),
    ]);
  }
}
