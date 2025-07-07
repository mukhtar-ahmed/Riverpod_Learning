import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notifier_update/enum_activity/model/activity.dart';
import 'package:notifier_update/enum_activity/model/activity_state.dart';
import 'package:notifier_update/enum_activity/model/enum_activity_provider.dart';
import 'dart:math';

class EnumActivityPage extends ConsumerStatefulWidget {
  const EnumActivityPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EnumActivityPageState();
}

class _EnumActivityPageState extends ConsumerState<EnumActivityPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen<ActivityState>(enumActivityProvider, (previous, next) {
      if (next.status == ActivityStatus.error) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(content: Text(next.error));
          },
        );
      }
    });

    final activity = ref.watch(enumActivityProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Enum Activity")),
      body: switch (activity.status) {
        ActivityStatus.initial => Center(child: Text("Get Some new activity")),
        ActivityStatus.loading => Center(child: CircularProgressIndicator()),
        ActivityStatus.error =>
          activity.activity == Activity.empty()
              ? Center(
                  child: Text(
                    activity.error,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              : ActivityWidget(activity: activity.activity),
        ActivityStatus.success => ActivityWidget(activity: activity.activity),
      },
      floatingActionButton: FilledButton(
        onPressed: () {
          int index = Random().nextInt(activityTypes.length);
          ref
              .read(enumActivityProvider.notifier)
              .fetchActivity(activityTypes[index]);
        },
        child: Text("New Activity"),
      ),
    );
  }
}

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key, required this.activity});

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(activity.type),
          Divider(),
          BulletedList(
            bullet: Icon(Icons.check),
            listItems: [
              'activity: ${activity.activity}',
              'accessibility: ${activity.accessibility}',
              'participants:  ${activity.participants}',
              'price: ${activity.price}',
              'key: ${activity.key}',
            ],
          ),
        ],
      ),
    );
  }
}
