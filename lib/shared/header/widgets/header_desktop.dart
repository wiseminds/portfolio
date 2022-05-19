import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/gen/assets.gen.dart'; 
import 'package:portfolio/shared/responsive/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'menu_button.dart';
import 'search_bar.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // const SiteLogo(),
            // 122.0.w,
            // const NavMenuHorizontal(),
            20.0.w,
            // ResponsiveBuilder(
            //     tablet: SizedBox.square(
            //         dimension: 18,
            //         child: Center(child: Assets.svg.search.svg())),
            //     desktop: const SizedBox(
            //         width: 300,
            //         child: SearchBar(
            //           hintText: 'Search company here',
            //         ))),
            62.0.w,
            const ResponsiveBuilder(desktop: SizedBox(), tablet: MenuButton()),
            // const LoginButton(),
            // 10.0.w,
            // const SignupButton()
          ],
        ),
      ),
    );
  }
}
