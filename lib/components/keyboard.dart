import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb,{super.key,});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button.big(text: 'AC', color: Button.dark,cb:cb),
            Button.darks(text: '%',cb:cb),
            Button.operations(text: '/',cb:cb),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button(text: '7',cb:cb),
            Button(text: '8',cb:cb),
            Button(text: '9',cb:cb),
            Button.operations(text: 'X',cb:cb),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button(text: '4',cb:cb),
            Button(text: '5',cb:cb),
            Button(text: '6',cb:cb),
            Button.operations(text: '-',cb:cb),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button(text: '1',cb:cb),
            Button(text: '2',cb:cb),
            Button(text: '3',cb:cb),
            Button.operations(text: '+',cb:cb),
          ]),
          const SizedBox(height: 1,),
          ButtonRow([
            Button.big(text: '0',cb:cb),
            Button(text: '.',cb:cb),
            Button.operations(text: '=',cb:cb),
          ])
        ],
      ),
    );
  }
}
