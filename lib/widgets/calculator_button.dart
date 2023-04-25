import 'package:flutter/material.dart';

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
      child: Text(
        label,
        style: color != null ? TextStyle(color: color) : null,
      ),
    );
  }
}