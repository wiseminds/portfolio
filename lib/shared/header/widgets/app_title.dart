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
          text: 'PorplePages',
          style: context.titleSmall?.copyWith(color: context.primaryColor))
    ]));
  }
}
