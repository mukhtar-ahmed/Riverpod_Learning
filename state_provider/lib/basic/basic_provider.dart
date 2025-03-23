import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'basic_provider.g.dart';

final basicProvider = StateProvider<int>((ref) {
  ref.onDispose(() {
    print("Basic State Provider Dispose");
  });
  return 0;
});

@Riverpod(keepAlive: true)
String age(ref) {
  ref.onDispose(() {
    print("Basic age State Provider Dispose");
  });
  final age = ref.watch(basicProvider);
  return "Hello i am $age year old";
}
