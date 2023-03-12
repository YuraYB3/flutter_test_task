import 'package:flutter/material.dart';

import '../../Services/BuildButtons.dart';

class BottomPanel {
  Widget CreateBottomPanel() {
    BuildButtons buttons = BuildButtons();
    return Container(
        color: const Color.fromRGBO(210, 213, 219, 0.8),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          childAspectRatio: 2,
          children: [
            buttons.buildNumberButton("1"),
            buttons.buildNumberButton("2"),
            buttons.buildNumberButton("3"),
            buttons.buildNumberButton("4"),
            buttons.buildNumberButton("5"),
            buttons.buildNumberButton("6"),
            buttons.buildNumberButton("7"),
            buttons.buildNumberButton("8"),
            buttons.buildNumberButton("9"),
            buttons.buildButtonSpecific(),
            buttons.buildNumberButton("0"),
            buttons.buildDeleteButton()
          ],
        ));
  }
}
