import 'package:flutter_riverpod/flutter_riverpod.dart';

class Count {
  final String name;
  Count({required this.name});
}

final valueProvider1 = Provider.autoDispose.family<String, Count>((ref, c) {
  ref.onDispose(() {
    print('valueProvider1.dispose ${c.name}');
  });
  return 'Hello, ${c.name}';
});
