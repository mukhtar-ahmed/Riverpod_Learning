import 'package:flutter/material.dart';
import 'package:flutter_freezed/model/collections.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final collection1 = ImutableCall(list: []);
    // collection1.list.add(7);
    // print(collection1);
    final collection1 = MutableCall(list: []);
    collection1.list.add(7);
    print(collection1);
    return Scaffold();
  }
}
