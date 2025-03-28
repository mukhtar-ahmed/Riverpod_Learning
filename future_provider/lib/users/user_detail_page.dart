import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserDetail extends ConsumerWidget {
  const UserDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("User Detail Page")),
      body: Center(child: Text("User Detail Page")),
    );
  }
}
