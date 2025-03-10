import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeHelloProvider = Provider.autoDispose<String>((ref) {
  print("[autoDisposeProvider] created");
  ref.onDispose(() {
    print('[autoDisposeProvider] Dispose called');
  });
  return "Hello";
});
