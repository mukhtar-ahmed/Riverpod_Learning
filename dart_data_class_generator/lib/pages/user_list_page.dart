import 'package:dart_data_class_generator/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:dart_data_class_generator/models/user.dart';
import 'package:dart_data_class_generator/repositories/fetch_users.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
  List<User> users = [];
  String error = "";
  bool isLoading = false;
  @override
  void initState() {
    _fetchUsers();
    super.initState();
  }

  void _fetchUsers() async {
    try {
      setState(() {
        isLoading = true;
      });
      users = await fetchUser();
      error = "";
    } catch (e) {
      error = e.toString();
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users")),
      body:
          isLoading
              ? CircleAvatar()
              : error.isEmpty
              ? ListUsers(users: users)
              : buildError(),
    );
  }

  Widget buildError() {
    return Center(
      child: Column(
        children: [
          Text(error),
          OutlinedButton(onPressed: fetchUser, child: Text("Retry")),
        ],
      ),
    );
  }
}

class ListUsers extends StatelessWidget {
  final List<User> users;
  const ListUsers({Key? key, required this.users}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        final user = users[index];
        return ListTile(
          leading: Text(user.id.toString()),
          title: Text(user.name),
          
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: users.length,
    );
  }
}
