import 'package:notifier_provider/enum_activity/enum_activity_state.dart';
import 'package:notifier_provider/models/activity.dart';
import 'package:notifier_provider/providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'enum_activity_provider.g.dart';

@riverpod
class EnumActivity extends _$EnumActivity {
  int _errorCount = 0;
  @override
  EnumActivityState build() {
    ref.onDispose(() {
      print("Enum Activity dispose");
    });
    print("has code $hashCode");
    return EnumActivityState.initial();
  }

  Future<void> fetchActivity(String activityType) async {
    print("Error Counter : $_errorCount");

    state = state.copyWith(status: ActivityStatus.loading);
    try {
      if (_errorCount++ % 2 == 0) {
        throw Exception("Simulated network failure");
      }
      final response = await ref.read(dioProvider).get('?type=$activityType');
      final activity = Activity.fromJson(response.data);
      state = state.copyWith(
        status: ActivityStatus.success,
        activity: activity,
      );
    } catch (e) {
      state = state.copyWith(
        status: ActivityStatus.failure,
        error: e.toString(),
      );
    }
  }
}
