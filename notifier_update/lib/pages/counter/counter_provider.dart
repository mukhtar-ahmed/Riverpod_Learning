import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends AutoDisposeNotifier<int> {
  @override
  int build() {
    ref.onDispose(() {
      print("Counter Provider dispose");
    });
    return 0;
  }

  void increment() {
    state++;
  }
}

final counterProvider = NotifierProvider.autoDispose<Counter, int>(() {
  return Counter();
});
