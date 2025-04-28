import 'package:flutter/material.dart';
import 'package:flutter_dart_class_generator/pages/person_screen.dart';
import 'package:flutter_dart_class_generator/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomButton(title: "Person Screen", screen: PersonScreen()),
          ],
        ),
      ),
    );
  }
}
