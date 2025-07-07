import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_provider.g.dart';

// class Counter extends AutoDisposeFamilyNotifier<int, int> {
//   @override
//   int build(int arg) {
//     ref.onDispose(() {
//       print("Counter Dispose");
//     });
//     return arg;
//   }

//   void increment() {
//     state++;
//   }
// }

// final counterProvider = NotifierProvider.autoDispose.family<Counter, int, int>(
//   () {
//     return Counter();
//   },
// );

@riverpod
class Counter extends _$Counter {
  @override
  int build(int arg) {
    ref.onDispose(() {
      print("Counter Dispose");
    });
    return arg;
  }

  void increment() {
    state++;
  }
}
