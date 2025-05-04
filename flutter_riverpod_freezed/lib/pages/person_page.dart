import 'package:flutter/material.dart';
import 'package:flutter_riverpod_freezed/models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = Person(id: 1, name: "mukhtar", email: "abc@gmail.com");
    final person2 = Person(id: 1, name: "mukhtar", email: "abc@gmail.com");
    final person3 = person1.copyWith(id: 3, email: "ab@gmail.com");
    print(person1);
    print(person1 == person2);
    print(person3);
    return Scaffold();
  }
}
