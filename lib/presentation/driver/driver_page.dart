import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/theme/formula_one_assets.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({Key? key}) : super(key: key);

  static Widget create() => const DriverPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: FormulaOneAssets.of(context).logo,
          color: FormulaOneColors.of(context).primary,
        ),
      ),
      body: Container(),
    );
  }
}
