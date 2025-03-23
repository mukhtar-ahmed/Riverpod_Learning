import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, required this.screen})
    : super(key: key);
  final String title;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => screen));
      },
      child: Text(title),
    );
  }
}
