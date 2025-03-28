import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/basic/basic_provider.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basic Provider")),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final hello = ref.watch(helloProvider);
            final world = ref.watch(worldProvider);
            return Text('$hello $world'); // Hello world
          },
        ),
      ),
    );
  }
}
