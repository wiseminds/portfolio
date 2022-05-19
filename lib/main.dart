import 'package:portfolio/router/strategy/routing_strategy.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'dependency_injection.dart';

void main() async {
  urlStrategy();
  await DependencyInjection.bootstrap();
  runApp(DependencyInjection.providers(const App()));
}
