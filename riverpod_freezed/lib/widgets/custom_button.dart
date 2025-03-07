import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.child})
    : super(key: key);
  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(builder: (BuildContext context) => child),
        );
      },
      child: Text(text),
    );
  }
}
