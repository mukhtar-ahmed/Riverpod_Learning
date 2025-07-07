import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notifier_update/enum_activity/model/activity.dart';
part 'activity_state.freezed.dart';

enum ActivityStatus { initial, loading, success, error }

@freezed
abstract class ActivityState with _$ActivityState {
  const factory ActivityState({
    required ActivityStatus status,
    required Activity activity,
    required String error,
  }) = _ActivityState;

  factory ActivityState.initial() {
    return ActivityState(
      status: ActivityStatus.initial,
      activity: Activity.empty(),
      error: '',
    );
  }
}
