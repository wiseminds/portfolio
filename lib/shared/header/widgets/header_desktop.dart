import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/shared/responsive/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'menu_button.dart';
import 'search_bar.dart';
import 'site_logo.dart';

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
            const SiteLogo(),
            .0.s,
          ],
        ),
      ),
    );
  }
}
