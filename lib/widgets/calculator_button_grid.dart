import 'package:flutter/material.dart';

import '../constants/button_list.dart';

class CalculatorButtonGrid extends StatelessWidget {
  const CalculatorButtonGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: buttonList.length,
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (BuildContext context, int index) {
        return buttonList[index];
      },
    );
  }
}
