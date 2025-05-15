import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider_updated/basic_provider/basic_provider.dart';

class BasicPage extends ConsumerStatefulWidget {
  const BasicPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BasicPageState();
}

class _BasicPageState extends ConsumerState<BasicPage> {
  String namem = "Mukhtar";
  @override
  Widget build(BuildContext context) {
    // final name = ref.watch(NameProvider(there: namem));
    ref.listen<int>(counterProvider, (previous, next) {
      if (next == 3) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(content: Text("Counter: $next"));
          },
        );
      }
    });
    final count = ref.watch(counterProvider);
    // if (count == 3) {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(content: Text("Counter: $count"));
    //     },
    //   );
    // }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$count'),
            FilledButton(
              onPressed: () {
                // setState(() {
                ref.read(counterProvider.notifier).state++;
                namem = namem == 'Mukhtar' ? "Ali" : 'Mukhtar';
                // });
              },
              child: Text("Update"),
            ),
          ],
        ),
      ),
    );
  }
}
