import 'package:flutter/cupertino.dart';

class DetectivePageRoute extends CupertinoPageRoute {
  final String route;
  final RouteSettings? routeSettings;
  final Widget Function(BuildContext) builder;

  DetectivePageRoute({
    this.routeSettings,
    required this.route,
    required this.builder,
  }) : super(builder: builder, settings: routeSettings);
}
