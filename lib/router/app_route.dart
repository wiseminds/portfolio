import 'package:flutter/material.dart';

abstract class AppRoute {
  String get pattern;
  Widget builder(BuildContext context, List<String> paths,
      Map<String, dynamic> parameters);
}
