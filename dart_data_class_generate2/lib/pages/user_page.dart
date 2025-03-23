import 'package:dart_data_class_generate2/models/user.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    User generateUser({
      required int id,
      required String name,
      required String email,
    }) {
      return User(id: id, name: name, email: email);
    }

    final person1 = generateUser(
      id: 1,
      name: "Mukhtar",
      email: "mukhtar@gmail.com",
    );
    final person2 = person1.copyWith(
      id: 2,
      name: "Mukhtar2",
      email: "mukhtar2@gmail.com",
    );
    final person3 = generateUser(
      id: 1,
      name: "Mukhtar",
      email: "mukhtar@gmail.com",
    );
    print(person1);
    print(person2);
    print(person3);
    print(person1 == person3);
    print(person1.hashCode);
    print(person3.hashCode);
    return Scaffold();
  }
}
