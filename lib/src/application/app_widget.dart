import 'package:flutter/material.dart';
import 'package:joguinho_detetive/src/application/modules/game/game_page.dart';
import 'package:joguinho_detetive/src/application/modules/home/home_page.dart';
import 'package:joguinho_detetive/src/application/modules/login/login_page.dart';
import 'package:joguinho_detetive/src/application/routes/routes_names.dart';
import 'package:nuvigator/next.dart';
import 'package:nuvigator/nuvigator.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({
    required this.title,
  });

  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      scaffoldMessengerKey: scaffoldKey,
      home: Nuvigator.routes(
        screenType: cupertinoScreenType,
        initialRoute: RoutesNames.loginPage,
        routes: [
          NuRouteBuilder(
            path: RoutesNames.loginPage,
            builder: (_, __, ___) => LoginPage(),
          ),
          NuRouteBuilder(
            path: RoutesNames.homePage,
            builder: (_, __, ___) => HomePage(),
          ),
          NuRouteBuilder(
            path: RoutesNames.gamePage,
            builder: (_, __, ___) => GamePage(),
          ),
        ],
      ),
      // initialRoute: RoutesNames.loginPage,
      // onGenerateRoute: AppRouter.generateRoutes,
    );
  }
}
