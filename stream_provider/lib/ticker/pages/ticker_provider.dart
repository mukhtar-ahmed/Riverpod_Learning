import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'ticker_provider.g.dart';

// final tickerProvider = StreamProvider<int>((ref) {
//   return Stream.periodic(Duration(seconds: 1), (t) => t + 1).take(60);
// });

@riverpod
Stream<int> ticker(Ref ref) {
  print('ticker start');
  ref.onDispose(() {
    print('ticker dispose');
  });
  return Stream.periodic(Duration(seconds: 1), (t) => t + 1).take(60);
}
