import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    const person1 = Person(id: 1, name: "mukhatr", email: "mukhtar@gmail.com");
    print(person1);
    const person2 = Person(id: 1, name: "mukhatr", email: "mukhtar@gmail.com");
    print(person1 == person2);
    
    return Scaffold(appBar: AppBar(title: const Text('Person Page')));
  }
}
