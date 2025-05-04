import 'package:flutter/material.dart';
import 'package:flutter_freezed/model/person.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = Person(id: 1, name: 'Mukhtar', email: '/abc@gmail.com');
    final person2 = Person(id: 1, name: 'Mukhtar', email: '/abc@gmail.com');
    final person3 = person1.copyWith(id: 3);
    print(person1);
    print(person1 == person2);
    print(person3);
    return Scaffold();
  }
}
