import 'package:flutter/material.dart';
import 'package:formula_one/di/injector.dart';
import 'package:formula_one/presentation/formula_one_app.dart';

void main() {
  configureDependencies();
  runApp(FormulaOneApp());
}
