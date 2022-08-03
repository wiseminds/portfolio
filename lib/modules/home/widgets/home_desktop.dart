import 'package:flutter/material.dart';
import 'package:portfolio/shared/header/header.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          const Header(),
        ],
      ),
    );
  }
}
