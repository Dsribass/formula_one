import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/components/bottom_navigation_bar_page.dart';
import 'package:formula_one/presentation/standings/constructor/constructor_standings_page.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_page.dart';
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
            _standingsDriver: (_) => MaterialPage(
                  child: DriverStandingsPage.create(),
                ),
            _standingsConstructor: (_) => const MaterialPage(
                  child: ConstructorStandingsPage(),
                ),
          },
        );
}
