import 'package:flutter/material.dart';

import '../controller/calculator_controller.dart';
import '../theme.dart';
import 'calculator_button.dart';

class RowButton extends StatelessWidget {
  const RowButton({
    super.key,
    required this.calculatorC,
  });

  final CalculatorController calculatorC;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 90,
            child: CalculatorButton(
              label: "0",
              onPress: () {
                calculatorC.setNumber("0");
              },
              style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
            ),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        SizedBox(
          height: 90,
          width: 90,
          child: CalculatorButton(
            label: ".",
            onPress: () {
              calculatorC.decimalNum();
            },
            style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        SizedBox(
          height: 90,
          width: 90,
          child: CalculatorButton(
            onPress: () {
              calculatorC.isNotOperation()
                  ? calculatorC.calculateEval()
                  : ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Masukan Operasi matematika yang benar"),
                        backgroundColor: Colors.redAccent,
                      ),
                    );
            },
            style: ElevatedButton.styleFrom(backgroundColor: ternaryColor),
            label: '=',
          ),
        )
      ],
    );
  }
}
