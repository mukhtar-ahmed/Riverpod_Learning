import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_provider/family/family_provider.dart';

class FamilyPage extends ConsumerWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final increment = ref.watch(incrementProvider(10));
    final decrement = ref.watch(decrementProvider(-10));
    return Scaffold(
      appBar: AppBar(title: Text("Family State Provider")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(increment.toString()),
              SizedBox(width: 10.0),
              FilledButton(
                onPressed: () {
                  ref
                      .read(incrementProvider(10).notifier)
                      .update((state) => state + 10);
                },
                child: Text("Increment"),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(decrement.toString()),
              SizedBox(width: 10.0),
              FilledButton(
                onPressed: () {
                  ref
                      .read(decrementProvider(-10).notifier)
                      .update((state) => state - 10);
                },
                child: Text("Decrement"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
