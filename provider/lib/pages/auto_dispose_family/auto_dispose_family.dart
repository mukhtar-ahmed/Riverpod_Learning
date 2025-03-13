import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_dispose_family.g.dart';

// final autoDisposeFamilyHelloProvider = Provider.autoDispose
//     .family<String, String>((ref, name) {
//       ref.onDispose(() {
//         print('Dispose $name');
//       });
//       return 'Hello, autoDisposeFamilyHelloProvider! $name';
//     });

// final autoDisposeFamilyProvider = Provider.autoDispose.family<String, String>((ref, name) {
//    return 'Hello, autoDisposeFamilyHelloProvider! $name';
// });

@Riverpod(keepAlive: true)
String hello(HelloRef ref, {required there}) {
  return 'Hello, $there ';
}

@Riverpod(keepAlive: true)
String world(WorldRef ref) {
  return 'World,  ';
}
