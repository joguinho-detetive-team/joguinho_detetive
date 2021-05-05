import 'package:flutter/cupertino.dart';
import 'package:joguinho_detetive/src/utils/routes_names.dart';
import 'package:joguinho_detetive/src/application/modules/game/game_page.dart';
import 'package:joguinho_detetive/src/application/modules/home/home_page.dart';
import 'package:joguinho_detetive/src/application/routes/detective_page_router.dart';

class AppRouter {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.homePage:
        return DetectivePageRoute(
          route: RoutesNames.homePage,
          builder: (context) => HomePage(),
        );
      case RoutesNames.gamePage:
        return DetectivePageRoute(
          route: RoutesNames.gamePage,
          builder: (context) => GamePage(),
        );
      default:
        return DetectivePageRoute(
          route: RoutesNames.homePage,
          builder: (context) => HomePage(),
        );
    }
  }
}
