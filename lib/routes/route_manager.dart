import 'package:flutter/cupertino.dart';
import 'package:neo_bench/modules/splash/ui/splash_screen.dart';

class RouteManager {
  static Map<String, Widget Function(BuildContext)> get routes => {

    SplashScreenUI.routeManager:SplashScreenUI.builder
  };

  static String get  initRoute => SplashScreenUI.routeManager;
}
