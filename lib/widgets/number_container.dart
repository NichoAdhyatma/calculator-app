import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../constants/const.dart';

class NumberContainer extends StatelessWidget {
  const NumberContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 16.0, vertical: 8.0),
          constraints: const BoxConstraints(
              minHeight: 200, maxHeight: double.infinity),
          alignment: Alignment.bottomRight,
          child: Obx(() {
            var numText = calculatorC.number.value;
            return Text(
              numText,
              style: TextStyle(
                  fontSize: numText.length > 20 ? 35 : 54),
              softWrap: true,
            );
          }),
        ),
      ],
    );
  }
}

