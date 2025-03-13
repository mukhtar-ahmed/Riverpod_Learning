import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family_test/auto_dispose_family_test_provider.dart';

class AutoDisposeFamilyTestPage extends ConsumerStatefulWidget {
  const AutoDisposeFamilyTestPage({super.key});

  @override
  ConsumerState<AutoDisposeFamilyTestPage> createState() =>
      _AutoDisposeFamilyTestPageState();
}

class _AutoDisposeFamilyTestPageState
    extends ConsumerState<AutoDisposeFamilyTestPage> {
  String name = "Mukhtar";
  @override
  Widget build(BuildContext context) {
    final helloThere = ref.watch(valueProvider1(Count(name: name)));
    return Scaffold(
      appBar: AppBar(title: Text("AutoDisposeFamilyTestPage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return Text(helloThere);
              },
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                setState(() {
                  name == "Mukhtar" ? name = "Mukhtar1" : name = "Mukhtar";
                });
              },
              child: Text("Update Name"),
            ),
          ],
        ),
      ),
    );
  }
}
