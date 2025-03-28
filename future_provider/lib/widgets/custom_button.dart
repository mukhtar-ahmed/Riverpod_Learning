import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, required this.child})
    : super(key: key);
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (BuildContext context) => child));
      },
      child: Text(title),
    );
  }
}
