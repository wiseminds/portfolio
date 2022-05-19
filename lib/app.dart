import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'constants/strings.dart';
import 'core/theme/porple_theme.dart';
// import 'router/nav_keys.dart';
import 'modules/home/home.dart';
import 'router/app_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RobotDetector(
        debug: kDebugMode, // you can set true to enable robot mode
        child: GestureDetector(
            onTap: () =>
                WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: Strings.appTitle,
              theme: PorpleTheme().dark,
              darkTheme: PorpleTheme().dark,
              localizationsDelegates: const [
                // AppLocalizations.delegate, // Add this line
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              navigatorKey: GetIt.I<GlobalKey<NavigatorState>>(),
              onGenerateRoute: AppRouter.onGenerateRoute,
              // onGenerateTitle: AppRouter.onGenerateRoute,
              navigatorObservers: [seoRouteObserver],
              home: const Home(),
              supportedLocales: const [
                Locale('en', ''), // English, no country code
                // Locale('es', ''), // Spanish, no country code
              ],
            )));
  }
}
