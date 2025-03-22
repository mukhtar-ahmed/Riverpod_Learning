import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/basic/basic_provider.dart';

class BasicPage extends ConsumerWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterProvider = ref.watch(basicProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Basic Page")),
      body: Center(child: Text("Counter: $counterProvider")),
      floatingActionButton: CircleAvatar(
        radius: 30.0,
        child: GestureDetector(
          onTap: () {
            ref.read(basicProvider.notifier).state++;
          },
          child: Icon(Icons.add, size: 30.0),
        ),
      ),
    );
  }
}
