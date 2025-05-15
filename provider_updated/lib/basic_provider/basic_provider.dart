import 'package:flutter_riverpod/flutter_riverpod.dart';

// @Riverpod(keepAlive: true)
// String name(Ref ref) {

//   return 'Mukhtar';
// }

// @riverpod
// String name(Ref ref) {
//   ref.onDispose(() {});
//   return "Mukhtar";
// }

// @Riverpod(keepAlive: true)
// String name(Ref ref, {required String there}) {
//   return "Hello $there";
// }

// @riverpod
// String name(Ref ref, {required String there}) {
//   print("provider $there is created");
//   ref.onDispose(() {
//     print("provider $there is dispose");
//   });
//   return "Hello $there";
// }

final counterProvider = StateProvider<int>((ref) {
  return 0;
});
