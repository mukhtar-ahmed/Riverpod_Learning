import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auto_dispose_provider.g.dart';

final counterProvider = StateProvider.autoDispose<int>((ref) {
  ref.onDispose(() {
    print("counterProvider Dispose");
  });
  return 0;
});

@Riverpod(keepAlive: false)
String age(AgeRef ref) {
  final age = ref.watch(counterProvider);
  ref.onDispose(() {
    print("AgeProvider Dispose");
  });

  return "Hi! My age is $age";
}
