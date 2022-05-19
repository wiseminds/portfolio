import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/shared/header/widgets/menu_button.dart';
import 'package:flutter/material.dart';

import 'site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29.0, vertical: 24),
          child: Row(
              children: [const SiteLogo(), 122.0.w, .0.s, const MenuButton()])),
    );
  }
}
