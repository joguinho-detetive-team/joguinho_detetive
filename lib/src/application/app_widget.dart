import 'package:flutter/material.dart';
import 'package:joguinho_detetive/src/application/routes/routes.dart';
import 'package:joguinho_detetive/src/application/routes/routes_names.dart';

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
      initialRoute: RoutesNames.loginPage,
      onGenerateRoute: AppRouter.generateRoutes,
      scaffoldMessengerKey: scaffoldKey,
    );
  }
}
