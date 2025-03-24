import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/auto_dispose/auto_dispose_provider.dart';

class AutoDisposePage extends ConsumerWidget {
  const AutoDisposePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(ageProvider);
    return Scaffold(
      appBar: AppBar(title: Text("AutoDisposePage")),
      body: Center(child: Text(data)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).update((state) => state + 10);
        },
        child: CircleAvatar(child: Icon(Icons.add)),
      ),
    );
  }
}
