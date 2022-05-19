import 'package:portfolio/core/extensions/index.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final bool hasDarkBackground;
  const AppTitle({Key? key, this.hasDarkBackground = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: '',
          style: context.titleSmall?.copyWith(
              color:
                  hasDarkBackground ? Colors.white : const Color(0xff4F4F4F))),
      TextSpan(
          text: 'Wisdom Ekeh',
          style: context.headline5?.copyWith(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400))
    ]));
  }
}
