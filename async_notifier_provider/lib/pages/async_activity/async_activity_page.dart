import 'dart:math';

import 'package:async_notifier_provider/extensions/async_value_xx.dart';
import 'package:async_notifier_provider/models/activity.dart';
import 'package:async_notifier_provider/pages/async_activity/async_activity_provider.dart';
import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncActivityPage extends ConsumerWidget {
  const AsyncActivityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<Activity>>(asyncActivityProvider, (previous, next) {
      if (next.hasError && !next.isLoading) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(content: Text(next.error.toString()));
          },
        );
      }
    });

    final activity = ref.watch(asyncActivityProvider);
    print(activity.toStr);
    print(activity.props);
    return Scaffold(
      appBar: AppBar(title: Text("Async Activity Page")),
      body: Center(
        child: activity.when(
          skipError: true,
          data: (activity) => ActivityWidget(activity: activity),
          error: (error, stackTrace) {
            return Text("Get New Activity");
          },
          loading: () {
            return CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final randomNumber = Random().nextInt(activityTypes.length);
          ref
              .read(asyncActivityProvider.notifier)
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
