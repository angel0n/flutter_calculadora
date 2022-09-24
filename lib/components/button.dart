import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const colordefault = Color.fromRGBO(112, 112, 112, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({super.key, required this.text, this.big = false, this.color = colordefault, required this.cb});

  const Button.big({super.key, required this.text, this.big = true, this.color = colordefault, required this.cb});

  const Button.operations({super.key, required this.text, this.big = false, this.color = operation, required this.cb});
  const Button.darks({super.key, required this.text, this.big = false, this.color = dark, required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: ()=>cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
