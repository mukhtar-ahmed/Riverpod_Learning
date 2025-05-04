import 'package:flutter/material.dart';
import 'package:flutter_riverpod_freezed/pages/mutable_person_page.dart';
import 'package:flutter_riverpod_freezed/pages/person_page.dart';
import 'package:flutter_riverpod_freezed/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomButton(title: "Person", screen: PersonPage()),
            CustomButton(title: "Mutable Person", screen: MutablePersonPage()),
          ],
        ),
      ),
    );
  }
}
