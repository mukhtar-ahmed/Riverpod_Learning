import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
abstract class Activity with _$Activity {
  const factory Activity({
    required String activity,
    required String type,
    required int participants,
    required double price,
    // required String link,
    required String key,
    required double accessibility,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);

  factory Activity.empty() => Activity(
    activity: '',
    type: '',
    participants: 0,
    price: 0.0,
    key: '',
    accessibility: 0.0,
  );
}

final activityTypes = [
  "education",
  "recreational",
  "social",
  "diy",
  "charity",
  "cooking",
  "relaxation",
  "music",
  "busywork",
];
