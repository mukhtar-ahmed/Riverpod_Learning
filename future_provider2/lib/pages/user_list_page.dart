import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider2/pages/user_details_page.dart';
import 'package:future_provider2/pages/user_page_provider.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userProvider);
    print(userData);
    print(
      "isLoading: ${userData.isLoading}, isRefresh: ${userData.isRefreshing}, isReloading: ${userData.isReloading}, hasvalue: ${userData.hasValue}, iserror: ${userData.hasError}",
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        actions: [
          IconButton(
            onPressed: () {
              ref.invalidate(userProvider);
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: userData.when(
        // skipLoadingOnRefresh: false,
        data: (users) {
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(userProvider),
            color: Colors.red,
            child: ListView.separated(
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                final user = users[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (BuildContext context) => UserDetailsPage(user.id),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: CircleAvatar(child: Text(user.id.toString())),
                    title: Text(user.username),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
              itemCount: users.length,
            ),
          );
        },
        error: (e, st) {
          return Center(child: Text(e.toString()));
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
