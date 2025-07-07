import 'package:notifier_update/enum_activity/model/activity.dart';
import 'package:notifier_update/enum_activity/model/activity_state.dart';
import 'package:notifier_update/enum_activity/model/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'enum_activity_provider.g.dart';

@riverpod
class EnumActivity extends _$EnumActivity {
  int _errorCount = 0;
  @override
  ActivityState build() {
    return ActivityState.initial();
  }

  Future<void> fetchActivity(String type) async {
    state = state.copyWith(status: ActivityStatus.loading);
    try {
      if (_errorCount++ % 2 == 0) {
        throw Exception("Simulated network failure");
      }
      final response = await ref.read(dioProvider).get('?type=$type');
      final activity = Activity.fromJson(response.data);

      print("::::::::::::::::::::::::::::::::::");
      print(activity);
      print("::::::::::::::::::::::::::::::::::");
      state = state.copyWith(
        status: ActivityStatus.success,
        activity: activity,
      );
    } catch (e) {
      state = state.copyWith(status: ActivityStatus.error, error: e.toString());
    }
  }
}
