import 'package:flutter/material.dart';
import 'package:flutter_dart_class_generator/model/person.dart';
import 'package:flutter_dart_class_generator/repositories/fetch_user.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = Person(
      id: 1,
      name: 'Mukhtar',
      email: 'kh.mukhtar60@gmail.com',
    );
    final person2 = person1.copywith(id: 2);
    final person3 = Person(
      id: 1,
      name: 'Mukhtar',
      email: 'kh.mukhtar60@gmail.com',
    );
    print(person2);
    print(person1);
    print(person1 == person3);
    print(person1.hashCode);
    print(person3.hashCode);
    fetchUser();
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Person Screen")),
    );
  }
}
