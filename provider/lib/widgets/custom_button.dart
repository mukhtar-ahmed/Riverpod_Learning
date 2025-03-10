import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.child, required this.title})
    : super(key: key);
  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.of(context).push<void>(
          MaterialPageRoute<void>(builder: (BuildContext context) => child),
        );
      },
      child: Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
