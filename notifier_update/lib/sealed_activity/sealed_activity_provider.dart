import 'package:notifier_update/enum_activity/model/activity.dart';
import 'package:notifier_update/enum_activity/model/dio_provider.dart';
import 'package:notifier_update/sealed_activity/sealed_activity_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sealed_activity_provider.g.dart';

@riverpod
class SealedActivity extends _$SealedActivity {
  int _errorCount = 0;
  @override
  SealedActivityState build() {
    return SealedActivityInitial();
  }

  Future<void> fetchActivity(String type) async {
    state = const SealedActivityLoading();
    try {
      if (_errorCount++ % 2 == 0) {
        throw Exception("Simulated network failure");
      }
      final response = await ref.read(dioProvider).get('?type=$type');
      final activity = Activity.fromJson(response.data);

      print("::::::::::::::::::::::::::::::::::");
      print(activity);
      print("::::::::::::::::::::::::::::::::::");
      state = SealedActivitySuccess(activity: activity);
    } catch (e) {
      state = SealedActivityFailure(error: e.toString());
    }
  }
}
