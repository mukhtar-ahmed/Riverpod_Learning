import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notifier_provider/enum_activity/enum_activity_provider.dart';
import 'package:notifier_provider/enum_activity/enum_activity_state.dart';
import 'package:notifier_provider/models/activity.dart';
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
    ref.listen<EnumActivityState>(enumActivityProvider, (previous, next) {
      if (next.status == ActivityStatus.failure) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(content: Text(next.error));
          },
        );
      }
    });

    final activityStatus = ref.watch(enumActivityProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Enum Activity Page")),
      body: switch (activityStatus.status) {
        ActivityStatus.initial => Center(child: Text("Get Some Activity")),
        ActivityStatus.loading => Center(child: CircularProgressIndicator()),
        ActivityStatus.failure =>
          activityStatus.activity == Activity.empty()
              ? Center(
                  child: Text(
                    activityStatus.error,
                    style: TextStyle(color: Colors.red),
                  ),
                )
              : ActivityWidget(activity: activityStatus.activity),
        ActivityStatus.success => ActivityWidget(
          activity: activityStatus.activity,
        ),
      },
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final randomNumber = Random().nextInt(activityTypes.length);
          ref
              .read(enumActivityProvider.notifier)
              .fetchActivity(activityTypes[randomNumber]);
        },
        label: Text("New Activity"),
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
