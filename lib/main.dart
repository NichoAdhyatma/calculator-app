import 'package:calculator_app/calculator_layout.dart';
import 'package:calculator_app/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const CalculatorLayout(),
    );
  }
}
