import 'package:calculator_app/constants/const.dart';
import 'package:calculator_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.label,
    required this.onPress,
    required this.style,
    this.color,
  });

  final String label;
  final void Function() onPress;
  final ButtonStyle style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: style,
      child: label.contains('A')
          ? Obx(
              () => Text(
                calculatorC.number.value != '0' ? "C" : label,
                style: TextStyle(color: primaryColor),
              ),
            )
          : Text(
              label,
              style: color != null ? TextStyle(color: color) : null,
            ),
    );
  }
}
