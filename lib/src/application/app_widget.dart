import 'package:flutter/material.dart';
import 'package:joguinho_detetive/src/application/routes/routes.dart';
import 'package:joguinho_detetive/src/utils/routes_names.dart';
import 'package:joguinho_detetive/src/application/modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: RoutesNames.homePage,
      onGenerateRoute: AppRouter.generateRoutes,
      home: HomePage(),
    );
  }
}
