import 'package:calculator_app/theme.dart';
import 'package:calculator_app/widgets/calculator_button_grid.dart';
import 'package:calculator_app/widgets/number_container.dart';
import 'package:calculator_app/widgets/row_button.dart';
import 'package:flutter/material.dart';

import 'constants/const.dart';

class CalculatorLayout extends StatefulWidget {
  const CalculatorLayout({Key? key}) : super(key: key);

  @override
  State<CalculatorLayout> createState() => _CalculatorLayoutState();
}

class _CalculatorLayoutState extends State<CalculatorLayout> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: DefaultTextStyle(
          style: whiteText,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "Calculator App",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const Flexible(
                flex: 3,
                child: NumberContainer(),
              ),
              const Flexible(
                flex: 7,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: CalculatorButtonGrid(),
                ),
              ),

              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: RowButton(calculatorC: calculatorC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



