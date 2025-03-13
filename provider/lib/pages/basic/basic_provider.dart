import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'basic_provider.g.dart';

// final helloProvider = Provider<String>((ref) {
//   return 'Hello';
// });

final worldProvider = Provider<String>((ref) {
  return 'World';
});

@riverpod
String hello(HelloRef ref) {
  return 'Hello';
}
