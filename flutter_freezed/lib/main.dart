import 'package:flutter/material.dart';
import 'package:flutter_freezed/pages/collection_screen.dart';
import 'package:flutter_freezed/pages/hote_screen.dart';
import 'package:flutter_freezed/pages/method_screen.dart';
import 'package:flutter_freezed/pages/mutable_person_screen.dart';
import 'package:flutter_freezed/pages/person_screen.dart';
import 'package:flutter_freezed/widget/custom_button.dart';

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
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            CustomButton(screen: PersonScreen(), title: "Person"),
            CustomButton(
              screen: MutablePersonScreen(),
              title: "Mutable Person",
            ),
            CustomButton(screen: CollectionScreen(), title: "Collection"),
            CustomButton(screen: MethodScreen(), title: "Method"),
            CustomButton(screen: HoteScreen(), title: "Hotel"),
          ],
        ),
      ),
    );
  }
}
