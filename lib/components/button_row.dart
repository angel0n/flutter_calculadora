import 'package:calculadora/components/button.dart';
import 'package:flutter/cupertino.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow(this.buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch, //estica os elementos
        children: buttons.fold(<Widget>[], (previousValue, element) {
          previousValue.isEmpty ? previousValue.add(element) : previousValue.addAll([const SizedBox(width: 1), element]);
          return previousValue;
        }),
      ),
    );
  }
}
