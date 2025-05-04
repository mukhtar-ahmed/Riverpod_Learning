import 'package:flutter/material.dart';
import 'package:flutter_freezed/model/method.dart';

class MethodScreen extends StatelessWidget {
  const MethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const method1 = Method("method1");
    method1.printMethod();
    const method2 = Method("method2", id: 2);
    method2.printMethod();
    return Scaffold();
  }
}
