// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_provider.g.dart';

// class Counter extends AutoDisposeFamilyAsyncNotifier<int, int> {
//   @override
//   FutureOr<int> build(int arg) async {
//     ref.onDispose(() {
//       print("Dispose");
//     });
//     await waitSecond();
//     return arg;
//   }

//   // @override
//   // FutureOr<int> build() {
//   //   waitSecond();
//   //   return 0;
//   // }

//   Future<void> waitSecond() => Future.delayed(Duration(seconds: 1));

//   Future<void> increment() async {
//     state = AsyncLoading();

//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       return state.value! + 1;
//     });
//     // try {
//     //   waitSecond();
//     //   throw 'error while increment';
//     // } catch (error, stackTrace) {
//     //   state = AsyncError(error, stackTrace);
//     // }
//   }

//   Future<void> decrement() async {
//     state = AsyncLoading();
//     state = await AsyncValue.guard(() async {
//       await waitSecond();
//       if (state.value! == 2) {
//         throw 'error while increment';
//       }
//       return state.value! - 1;
//     });
//     // try {
//     //   waitSecond();
//     //   state = AsyncData(state.value! - 1);
//     // } catch (error, stackTrace) {
//     //   state = AsyncError(error, stackTrace);
//     // }
//   }
// }

// final counterProvider = AsyncNotifierProvider.autoDispose
//     .family<Counter, int, int>(Counter.new);

@riverpod
class Counter extends _$Counter {
  @override
  FutureOr<int> build(int initial) async {
    ref.onDispose(() {
      print("Dispose");
    });
    await waitSecond();
    return initial;
  }

  Future<void> waitSecond() => Future.delayed(Duration(seconds: 1));

  Future<void> increment() async {
    state = AsyncLoading();

    state = await AsyncValue.guard(() async {
      await waitSecond();
      return state.value! + 1;
    });
    // try {
    //   waitSecond();
    //   throw 'error while increment';
    // } catch (error, stackTrace) {
    //   state = AsyncError(error, stackTrace);
    // }
  }

  Future<void> decrement() async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      await waitSecond();
      if (state.value! == 2) {
        throw 'error while increment';
      }
      return state.value! - 1;
    });
    // try {
    //   waitSecond();
    //   state = AsyncData(state.value! - 1);
    // } catch (error, stackTrace) {
    //   state = AsyncError(error, stackTrace);
    // }
  }
}
