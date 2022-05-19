import 'package:portfolio/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Assets.svg.logo.svg();
  }
}
