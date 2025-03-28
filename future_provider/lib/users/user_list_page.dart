import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider/models/user.dart';
import 'package:future_provider/users/user_providers.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userList = ref.watch(userListProvider);
    return Scaffold(
      appBar: AppBar(title: Text("User List Page")),
      body: userList.when(
        data: (users) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              User user = users[index];
              return ListTile(
                leading: CircleAvatar(child: Text(user.id.toString())),
                title: Text(user.name),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
            itemCount: users.length,
          );
        },
        error: (err, str) {
          Center(
            child: Text(err.toString(), style: TextStyle(color: Colors.red)),
          );
        },
        loading: () {
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
