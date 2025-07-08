import 'package:async_notifier_provider/models/activity.dart';
import 'package:async_notifier_provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'async_activity_provider.g.dart';

@riverpod
class AsyncActivity extends _$AsyncActivity {
  int errorCounter = 0;
  @override
  FutureOr<Activity> build() {
    ref.onDispose(() {
      print("Async Activity Provider Dispose");
    });
    return getActivity(activityTypes[0]);
  }

  Future<Activity> getActivity(String activityType) async {
    final response = await ref.read(dioProvider).get("?type=$activityType");
    return Activity.fromJson(response.data);
  }

  Future<void> fetchActivity(String activityType) async {
    state = AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      if (errorCounter++ % 2 != 1) {
        await Future.delayed(Duration(seconds: 1));
        throw "Faild to featch";
      }
      return getActivity(activityType);
    });
  }
}
