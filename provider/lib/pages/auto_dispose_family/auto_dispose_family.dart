import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeFamilyHelloProvider = Provider.autoDispose
    .family<String, String>((ref, name) {
      ref.onDispose(() {
        print('Dispose $name');
      });
      return 'Hello, autoDisposeFamilyHelloProvider! $name';
    });
