import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/bottom_navigation_bar_page.dart';
import 'package:formula_one/presentation/standings/constructor/standings_constructor_page.dart';
import 'package:formula_one/presentation/standings/driver/standings_driver_page.dart';
import 'package:routemaster/routemaster.dart';

const String _landing = '/';
const String _standingsDriver = '/standings-drivers';
const String _standingsConstructor = '/standings-constructors';

class AppRouteMap extends RouteMap {
  AppRouteMap()
      : super(
          routes: {
            _landing: (_) => const IndexedPage(
                  child: BottomNavigationBarPage(),
                  paths: [
                    _standingsDriver,
                    _standingsConstructor,
                  ],
                ),
            _standingsDriver: (_) => const MaterialPage(
                  child: StandingsDriverPage(),
                ),
            _standingsConstructor: (_) => const MaterialPage(
                  child: StandingsConstructorPage(),
                ),
          },
        );
}
