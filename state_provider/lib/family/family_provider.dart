import 'package:flutter_riverpod/flutter_riverpod.dart';

final incrementProvider = StateProvider.autoDispose.family<int, int>((
  ref,
  initial,
) {
  ref.onDispose(() {
    print("incrementProvider $initial Dispose");
  });
  return initial;
});

final decrementProvider = StateProvider.family<int, int>((ref, initial) {
  ref.onDispose(() {
    print("decrementProvider $initial Dispose");
  });
  return initial;
});
