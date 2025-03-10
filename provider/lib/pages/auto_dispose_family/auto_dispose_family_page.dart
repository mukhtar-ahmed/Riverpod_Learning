import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/auto_dispose_family/auto_dispose_family.dart';

class AutoDisposeFamilyPage extends StatelessWidget {
  const AutoDisposeFamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Auto Dispose Family Provider")),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final value = ref.watch(autoDisposeFamilyHelloProvider("Mukhtar"));
            return Text(value);
          },
        ),
      ),
    );
  }
}
