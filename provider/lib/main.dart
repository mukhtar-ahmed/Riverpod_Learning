import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family_test/auto_dispose_family_test_page.dart';
import 'package:provider/pages/auto_dispose/auto_dispose_page.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family_page.dart';
import 'package:provider/pages/basic/basic_page.dart';
import 'package:provider/pages/family/family_page.dart';
import 'package:provider/widgets/custom_button.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
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
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomButton(child: BasicPage(), title: "Basic Provider"),
              CustomButton(
                child: AutoDisposePage(),
                title: "Auto Dispose Provider",
              ),
              CustomButton(child: FamilyPage(), title: "Family Provider"),
              CustomButton(
                child: AutoDisposeFamilyPage(),
                title: "Auto Dispose Family Provider",
              ),
              CustomButton(
                child: AutoDisposeFamilyTestPage(),
                title: "Auto Dispose Family Test Provider",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
