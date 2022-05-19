import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/shared/responsive/providers/responsive_settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'menu_button.dart';
import 'site_logo.dart';

class HeaderTablet extends StatelessWidget {
  const HeaderTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = context.watch<ResponsiveSettingsProvider>().value;
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 24),
        child: Row(
          children: [
            const SiteLogo(),
            122.0.w,
            // if (responsive.type(MediaQuery.of(context).size.width) ==
            //     ResponsiveTypes.largeTablet)
            //   const NavMenuHorizontal(),
            20.0.w,

            62.0.w,
            const MenuButton()
          ],
        ),
      ),
    );
  }
}
