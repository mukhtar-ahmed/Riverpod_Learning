import 'package:async_notifier_provider/pages/counter/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider(10));

    print(counter);
    return Scaffold(
      appBar: AppBar(title: Text("Counter Page")),
      body: Center(
        child: counter.when(
          skipLoadingOnRefresh: false,
          data: (data) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(data.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    heroTag: 'increment',
                    child: Icon(Icons.add),
                    onPressed: () {
                      ref.read(counterProvider(10).notifier).increment();
                    },
                  ),
                  FloatingActionButton(
                    heroTag: 'decrement',
                    child: Icon(Icons.remove),
                    onPressed: () {
                      ref.read(counterProvider(10).notifier).decrement();
                    },
                  ),
                ],
              ),
            ],
          ),
          error: (error, stackTrace) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error.toString()),
                SizedBox(),
                OutlinedButton(
                  onPressed: () {
                    ref.invalidate(counterProvider);
                  },
                  child: Text('Refresh'),
                ),
              ],
            );
          },
          loading: () => CircularProgressIndicator(),
        ),
      ),
    );
  }
}
