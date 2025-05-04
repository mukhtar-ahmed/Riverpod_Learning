import 'package:flutter/material.dart';
import 'package:flutter_freezed/model/mutable_person.dart';

class MutablePersonScreen extends StatelessWidget {
  const MutablePersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = MutablePerson(
      id: 1,
      name: "Mukhtar",
      email: "abc@gmail.com",
    );
    person1.name = '1';
    print(person1);
    return Scaffold();
  }
}
