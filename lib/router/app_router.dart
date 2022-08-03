import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/modules/home/home.dart';

import 'app_route.dart';
import 'routes.dart';
import 'transissions/fade_route.dart';

class AppRouter with RouteAware {
  static final GlobalKey<NavigatorState> navigationKey =
      GetIt.I<GlobalKey<NavigatorState>>();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // print('onGenerateRoute: ${settings.name}');
    return _buildRoutes(settings);
  }

  static Route<dynamic> _buildRoutes(RouteSettings settings) {
    final uri = Uri.tryParse(
      settings.name ?? '',
    );

    AppRoute route = Routes.all.firstWhere(
        (i) => RegExp(uri?.path ?? '').hasMatch(i.pattern),
        orElse: () => const Home());
    return FadeRouteAlt(
      // soft: true,
      builder: (c) =>
          route.builder(c, uri?.pathSegments ?? [], uri?.queryParameters ?? {}),
      settings: settings,
    );
  }
}
