import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final String text;
  final IconData icons;
  final Color backgroundColor;
  final Function onPressed;
  final Key buttonKey;

  final prop = MaterialStateProperty.all;

  const CounterButton({
    @required this.buttonKey,
    @required this.text,
    @required this.icons,
    @required this.backgroundColor,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        key: buttonKey,
        onPressed: onPressed,
        icon: Icon(icons, color: Colors.white),
        label: Text(text, style: TextStyle(color: Colors.white)),
        style: ButtonStyle(
          padding: prop<EdgeInsetsGeometry>(EdgeInsets.all(8.0)),
          backgroundColor: prop<Color>(backgroundColor),
        ),
      ),
    );
  }
}
