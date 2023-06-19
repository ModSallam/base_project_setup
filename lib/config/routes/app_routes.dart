import 'package:flutter/material.dart';

import '../../core/utils/app_strings.dart';
import '../../features/bottom_bar/presentation/screens/bottom_bar_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = '/';
  static const String bottomBarRoute = '/bottomBarRoute';
}

class AppRoutes {
  static Route onGenerateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case Routes.bottomBarRoute:
        return MaterialPageRoute(
          builder: (context) => const BottomBarScreen(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
