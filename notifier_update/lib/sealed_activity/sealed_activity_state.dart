import 'package:notifier_update/enum_activity/model/activity.dart';

sealed class SealedActivityState {
  const SealedActivityState();
}

final class SealedActivityInitial extends SealedActivityState {
  const SealedActivityInitial();

  @override
  String toString() {
    return 'SealedActivityInitial';
  }
}

final class SealedActivityLoading extends SealedActivityState {
  const SealedActivityLoading();

  @override
  String toString() {
    return 'SealedActivityLoading';
  }
}

final class SealedActivitySuccess extends SealedActivityState {
  const SealedActivitySuccess({required this.activity});

  final Activity activity;

  @override
  String toString() {
    return 'SealedActivitySuccess $activity';
  }
}

final class SealedActivityFailure extends SealedActivityState {
  final String error;

  SealedActivityFailure({required this.error});

  @override
  String toString() {
    return 'SealedActivityFailure $error';
  }
}
