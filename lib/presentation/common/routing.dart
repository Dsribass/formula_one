import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class _Routes {
  static const String landing = '/';
}

class AppRouteMap extends RouteMap {
  AppRouteMap()
      : super(
          routes: {
            _Routes.landing: (_) => MaterialPage(child: Container()),
          },
        );
}
