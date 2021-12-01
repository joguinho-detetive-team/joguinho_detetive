import 'package:flutter/cupertino.dart';
import 'package:joguinho_detetive/src/application/modules/login/login_page.dart';
import 'package:joguinho_detetive/src/application/routes/routes_names.dart';
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

      case RoutesNames.loginPage:
        return DetectivePageRoute(
          route: RoutesNames.loginPage,
          builder: (context) => LoginPage(),
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
