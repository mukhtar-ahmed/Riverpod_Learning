import 'package:dart_data_class_generator/models/person.dart';
import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    Person generatePerson({
      required int id,
      required String name,
      required String email,
    }) {
      return Person(id: id, name: name, email: email);
    }

    final person1 = generatePerson(
      id: 1,
      name: "mukhtar",
      email: "mukhtar@gmail.com",
    );
    final person2 = person1.copyWith(
      id: 2,
      name: "mukhtar2",
      email: "mukhtar2@gmail.com",
    );
    final person3 = generatePerson(
      id: 1,
      name: "mukhtar",
      email: "mukhtar@gmail.com",
    );
    print(person1);
    print(person2);
    print(person3);
    print(person1 == person3);
    print(person1.hashCode);
    print(person3.hashCode);
    return Scaffold(appBar: AppBar(title: Text("App Bar")));
  }
}
