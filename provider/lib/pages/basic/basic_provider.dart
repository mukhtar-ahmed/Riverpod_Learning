import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloProvider = Provider<String>((ref) {
  return 'Hello';
});

final worldProvider = Provider<String>((ref) {
  return 'World';
});
