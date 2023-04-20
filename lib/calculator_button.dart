import 'package:calculator_app/theme.dart';
import 'package:flutter/material.dart';

class CalculatorButtons extends StatelessWidget {
  const CalculatorButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          children: [
            //row 1
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor),
              child: Text(
                "C",
                style: TextStyle(color: primaryColor),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor),
              child: Text(
                "+/-",
                style: TextStyle(color: primaryColor),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor),
              child: Text(
                "%",
                style: TextStyle(color: primaryColor),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: ternaryColor),
              child: const Text(
                "÷",
                style: TextStyle(fontSize: 32),
              ),
            ),

            // row 2
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor),
              child: const Text(
                "7",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor),
              child: const Text(
                "8",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor),
              child: const Text(
                "9",
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: ternaryColor),
              child: Icon(
                Icons.close_rounded,
                color: accentColor,
              ),
            ),

            // row 3
          ],
        ),
      ),
    );
  }
}
