import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var number = '0'.obs;

  void setNumber(String numberInput) {
    int operation = findOperation();
    if (operation < 0) {
      if (number.toString().length < 9) {
        if (number.toString() == '0') {
          number.value = numberInput;
        } else {
          number.value += numberInput;
        }
      }
    } else {
      var temp = number.substring(operation + 1);
      if (temp.length < 9) {
        if (temp != '0') {
          number.value += numberInput;
        }
      }
    }
  }

  bool isNotOperation() {
    var num =
        number.toString().characters.elementAt(number.toString().length - 1);
    if (num.contains('+') ||
        num.contains('×') ||
        num.contains('-') ||
        num.contains('÷')) {
      return false;
    } else {
      return true;
    }
  }

  int findOperation() {
    var temp = number.lastIndexOf(RegExp(r'[-+÷×]'));
    return temp;
  }

  void absNum() {
    int index = findOperation();

    if (isNotOperation()) {
      index > 0
          ? number.value = number.toString().replaceRange(
              index + 1,
              null,
              (format(double.parse(number.substring(index + 1)) * -1))
                  .toString())
          : number.value =
              (format(double.parse(number.toString()) * -1)).toString();
    }
  }

  void percentNum() {
    int index = findOperation();
    if (isNotOperation()) {
      index > 0
          ? number.value = number.toString().replaceRange(
                index + 1,
                null,
                (double.parse(number.substring(index + 1)) / 100).toString(),
              )
          : number.value = (double.parse(number.toString()) / 100).toString();
    }
  }

  void decimalNum() {
    int index = findOperation();
    if (isNotOperation()) {
      if (index > 0) {
        !number.substring(index).contains('.')
            ? number.value = number
                .toString()
                .replaceRange(index, null, "${number.substring(index)}.")
            : null;
      } else {
        !number.contains('.') ? number.value = "${number.toString()}." : null;
      }
    }
  }

  void calculateEval() {
    number.value = number.replaceAll("×", "*");
    number.value = number.replaceAll("÷", "/");

    Parser p = Parser();
    ContextModel cm = ContextModel();
    Expression exp = p.parse(number.toString());
    var result = format(exp.evaluate(EvaluationType.REAL, cm) as double);

    number.value = result.toString();
  }

  String format(double n) {
    String numStr = n.toString();
    int dotIndex = numStr.indexOf('.');

    int decimalPlaces = numStr.substring(dotIndex + 1).length > 9
        ? 9
        : numStr.substring(dotIndex + 1).length;

    return n.truncateToDouble() == n
        ? n.toStringAsFixed(0)
        : n.toStringAsFixed(decimalPlaces);
  }
}
