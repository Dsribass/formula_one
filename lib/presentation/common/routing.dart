import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/components/bottom_navigation_bar_page.dart';
import 'package:formula_one/presentation/constructor/constructor_page.dart';
import 'package:formula_one/presentation/driver/driver_page.dart';
import 'package:formula_one/presentation/standings/constructor/constructor_standings_page.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_page.dart';
import 'package:routemaster/routemaster.dart';

const String _landing = '/';
const String _standingsDriver = '/standings-drivers';
const String _standingsConstructor = '/standings-constructors';
const String _driver = '$_standingsDriver/:driverId';
const String _constructor = '$_standingsConstructor/:constructorId';

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
            _standingsConstructor: (_) => MaterialPage(
                  child: ConstructorStandingsPage.create(),
                ),
            _driver: (data) => MaterialPage(
                  child: DriverPage.create(),
                ),
            _constructor: (data) => MaterialPage(
                  child: ConstructorPage.create(),
                ),
          },
        );
}

extension Routes on Routemaster {
  void pushDriverPage(String driverId) => push('$_standingsDriver/$driverId');

  void pushConstructorPage(String constructorId) =>
      push('$_standingsConstructor/$constructorId');
}
