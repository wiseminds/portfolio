import 'package:portfolio/core/extensions/index.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.menu),
        color: context.primaryColor,
        onPressed: Scaffold.maybeOf(context)?.openDrawer);
  }
}
