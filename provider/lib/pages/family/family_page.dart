import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/pages/family/family_provider.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Family Page")),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final value = ref.watch(familyHelloProvider("Mukhtar"));
            return Text(value);
          },
        ),
      ),
    );
  }
}
