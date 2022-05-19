// import 'dart:_http';

import 'package:portfolio/core/env.dart';
import 'package:portfolio/data/local/hive_repository.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import 'shared/responsive/providers/responsive_settings_provider.dart';

class DependencyInjection {
  static final locator = GetIt.I;

  /// registers necessary dependencies
  static bootstrap() async {
    // HttpOverrides.global = MyHttpOverrides();
    await Hive.initFlutter();

    locator.registerSingleton<Env>(Development({}));
    locator.registerSingleton<GlobalKey<NavigatorState>>(GlobalKey());
    locator.registerSingleton<RouteObserver<PageRoute>>(
        RouteObserver<PageRoute>());

    // locator.registerSingleton<ApiProvider>(HttpApiProvider());
    locator.registerSingleton<LocalRepository>(HiveRepository());
    locator.registerSingleton<RemoteRepository>(
        RemoteRepository((HttpApiProvider())));
  }

  /// registers global providers
  static Widget providers(Widget child) => MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => ResponsiveSettingsProvider()),
       
      ], child: child);
}
