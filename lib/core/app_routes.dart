import 'package:financely/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = "/";

  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splash:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/splash"),
          builder: (context) => const SplashScreen(),
        );
      default:
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/error"),
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defined for ${routeSettings.name}"),
            ),
          ),
        );
    }
  }
}
