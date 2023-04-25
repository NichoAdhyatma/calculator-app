import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/calculator_button.dart';
import 'const.dart';

final List<Widget> buttonList = [
  CalculatorButton(
    label: "AC",
    onPress: () {
      calculatorC.number.value = '0';
    },
    style: ElevatedButton.styleFrom(backgroundColor: accentColor),
    color: primaryColor,
  ),

  CalculatorButton(
    label: "+/-",
    onPress: () {
      calculatorC.absNum();
    },
    style: ElevatedButton.styleFrom(backgroundColor: accentColor),
    color: primaryColor,
  ),

  CalculatorButton(
    label: "%",
    onPress: () {
      calculatorC.percentNum();
    },
    style: ElevatedButton.styleFrom(backgroundColor: accentColor),
    color: primaryColor,
  ),

  CalculatorButton(
    label: "÷",
    onPress: () {
      calculatorC.isNotOperation() ? calculatorC.number.value += "÷" : null;
    },
    style: ElevatedButton.styleFrom(backgroundColor: ternaryColor),
  ),

  // row 2
  CalculatorButton(
    label: "7",
    onPress: () {
      calculatorC.setNumber("7");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "8",
    onPress: () {
      calculatorC.setNumber("8");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "9",
    onPress: () {
      calculatorC.setNumber("9");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "×",
    onPress: () {
      calculatorC.isNotOperation() ? calculatorC.number.value += "×" : null;
    },
    style: ElevatedButton.styleFrom(backgroundColor: ternaryColor),
  ),

  // row 3
  CalculatorButton(
    label: "4",
    onPress: () {
      calculatorC.setNumber("4");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "5",
    onPress: () {
      calculatorC.setNumber("5");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "6",
    onPress: () {
      calculatorC.setNumber("6");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "-",
    onPress: () {
      calculatorC.isNotOperation() ? calculatorC.number.value += "-" : null;
    },
    style: ElevatedButton.styleFrom(backgroundColor: ternaryColor),
  ),

  //row 4
  CalculatorButton(
    label: "1",
    onPress: () {
      calculatorC.setNumber("1");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "2",
    onPress: () {
      calculatorC.setNumber("2");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "3",
    onPress: () {
      calculatorC.setNumber("3");
    },
    style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
  ),

  CalculatorButton(
    label: "+",
    onPress: () {
      calculatorC.isNotOperation() ? calculatorC.number.value += "+" : null;
    },
    style: ElevatedButton.styleFrom(backgroundColor: ternaryColor),
  ),
];


