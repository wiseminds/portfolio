import 'package:portfolio/core/extensions/index.dart';
import 'package:flutter/material.dart';

import 'app_title.dart';
import 'logo.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.pushNamed(context, '/'),
        child: Row(
          children: [const Logo(), 8.0.w, const AppTitle()],
        ));
  }
}
