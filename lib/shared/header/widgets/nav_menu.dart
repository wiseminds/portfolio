import 'package:portfolio/core/extensions/index.dart';
import 'package:portfolio/shared/header/models/nav_item.dart';
import 'package:flutter/material.dart';

class NavItemButton extends StatelessWidget {
  final NavItem item;
  final TextStyle? style;
  const NavItemButton({Key? key, required this.item, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(item.route);
      },
      child: Semantics(
        label: item.title,
        link: true,
        child: Text(
          item.title,
          textAlign: TextAlign.start,
          style: style ?? context.bodyText2?.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}

final List<NavItem> _items = [
  NavItem(title: 'Companies', route: '/companies'),
  NavItem(title: 'Blog', route: '/blog'),
];

class NavMenuHorizontal extends StatelessWidget {
  const NavMenuHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var item in _items)
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: NavItemButton(item: item),
          )
      ],
    );
  }
}

class NavMenuVertical extends StatelessWidget {
  const NavMenuVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var item in _items)
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 10.0),
            child: NavItemButton(item: item),
          )
      ],
    );
  }
}
