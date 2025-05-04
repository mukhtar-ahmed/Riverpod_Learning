import 'package:flutter/material.dart';
import 'package:flutter_riverpod_freezed/models/mutable_person.dart';

class MutablePersonPage extends StatelessWidget {
  const MutablePersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = MutablePerson(id: 1, name: 'name', email: 'email');
    return Scaffold(
      body: Center(
        child: Text(
          'ID: ${person1.id}, Name: ${person1.name}, Email: ${person1.email}',
        ),
      ),
    );
  }
}
