import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/auto_dispose/auto_dispose_page.dart';
import 'package:state_provider/basic/basic_page.dart';
import 'package:state_provider/family/family_page.dart';
import 'package:state_provider/widget/custom_button.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
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
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              CustomButton(
                title: "Basic State Provider",
                screenName: BasicPage(),
              ),
              SizedBox(height: 20),
              CustomButton(
                title: "Auto Dispose state Provider",
                screenName: AutoDisposePage(),
              ),
              SizedBox(height: 20),
              CustomButton(
                title: "Family state Provider",
                screenName: FamilyPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
