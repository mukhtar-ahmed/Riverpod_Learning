import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notifier_provider/models/activity.dart';

part 'enum_activity_state.freezed.dart';

enum ActivityStatus { initial, loading, success, failure }

@freezed
abstract class EnumActivityState with _$EnumActivityState {
  const factory EnumActivityState({
    required ActivityStatus status,
    required Activity activity,
    required String error,
  }) = _EnumActivityState;

  factory EnumActivityState.initial() {
    return EnumActivityState(
      status: ActivityStatus.initial,
      activity: Activity.empty(),
      error: '',
    );
  }
}
