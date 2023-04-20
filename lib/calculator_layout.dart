import 'dart:ffi';

import 'package:calculator_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorLayout extends StatefulWidget {
  const CalculatorLayout({Key? key}) : super(key: key);

  @override
  State<CalculatorLayout> createState() => _CalculatorLayoutState();
}

class _CalculatorLayoutState extends State<CalculatorLayout> {
  String number = '0';
  String calculate = '0';

  void setNumber(String numberInput) {
    setState(() {
      if (number == '0') {
        number = numberInput;
        calculate = numberInput;
      } else {
        number += numberInput;
        calculate += numberInput;
      }
    });
  }

  bool isOperation() {
    if (calculate.characters.elementAt(calculate.length - 1).contains('+') ||
        calculate.characters.elementAt(calculate.length - 1).contains('*') ||
        calculate.characters.elementAt(calculate.length - 1).contains('-') ||
        calculate.characters.elementAt(calculate.length - 1).contains('/')) {
      return false;
    } else {
      return true;
    }
  }

  bool setOperation(String operation) {
    if (isOperation()) {
      calculate += operation;
      return true;
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTextStyle(
          style: whiteText,
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Flexible(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    number,
                    style: const TextStyle(fontSize: 54),
                  ),
                ),
              ),
              Flexible(
                flex: 7,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
                  child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 8,
                    ),
                    children: [
                      //row 1
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            number = '0';
                            calculate = '0';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: accentColor),
                        child: Text(
                          "AC",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            number = (int.parse(number) * -1).toString();
                            calculate = number;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: accentColor),
                        child: Text(
                          "+/-",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            number = (int.parse(number) * 0.01).toString();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: accentColor),
                        child: Text(
                          "%",
                          style: TextStyle(color: primaryColor),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            setOperation("/") ? number += "÷" : null;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ternaryColor),
                        child: const Text(
                          "÷",
                          style: TextStyle(fontSize: 32),
                        ),
                      ),

                      // row 2
                      ElevatedButton(
                        onPressed: () {
                          setNumber('7');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "7",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setNumber('8');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "8",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setNumber('9');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "9",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            setOperation("*") ? number += "×" : null;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ternaryColor),
                        child: Icon(
                          Icons.close_rounded,
                          color: accentColor,
                        ),
                      ),

                      // row 3
                      ElevatedButton(
                        onPressed: () {
                          setNumber('4');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "4",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setNumber('5');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "5",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setNumber('6');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "6",
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              setOperation("-") ? number += "-" : null;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ternaryColor),
                          child: const Text("-")),

                      //row 4
                      ElevatedButton(
                        onPressed: () {
                          setNumber('1');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "1",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setNumber('2');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "2",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setNumber('3');
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: secondaryColor),
                        child: const Text(
                          "3",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            setOperation("+") ? number += "+" : null;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ternaryColor),
                        child: const Text("+"),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              setNumber('0');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                            ),
                            child: const Text(
                              "0",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor),
                          child: const Text(
                            ".",
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      SizedBox(
                        height: 90,
                        width: 90,
                        child: ElevatedButton(
                          onPressed: () {
                            isOperation()
                                ? null
                                : ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          "Masukan Operasi matematika yang benar"),
                                      backgroundColor: Colors.redAccent,
                                    ),
                                  );
                            Parser p = Parser();
                            ContextModel cm = ContextModel();
                            Expression exp = p.parse(calculate);

                            setState(() {
                              var result = exp.evaluate(EvaluationType.REAL, cm)
                                  as double;
                              number = result.toString();
                              calculate = number;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ternaryColor),
                          child: const Text("="),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
