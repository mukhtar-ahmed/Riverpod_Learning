import 'package:async_notifier_provider/pages/async_activity/async_activity_page.dart';
import 'package:async_notifier_provider/pages/counter/counter_page.dart';
import 'package:async_notifier_provider/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      home: const HomePage(),
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
            CustomButton(title: "Counter", screen: CounterPage()),
            CustomButton(title: "Async Activity", screen: AsyncActivityPage()),
          ],
        ),
      ),
    );
  }
}
