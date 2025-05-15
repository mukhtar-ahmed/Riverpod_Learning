import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:future_provider2/pages/user_page_provider.dart';

class UserDetailsPage extends ConsumerWidget {
  const UserDetailsPage(this.id, {super.key});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetails = ref.watch(userDetailsProvider(id));
    return Scaffold(
      appBar: AppBar(title: Text("User Details screen")),
      body: userDetails.when(
        data: (user) {
          return RefreshIndicator(
            onRefresh: () async => ref.refresh(userDetailsProvider(id)),
            child: SizedBox.expand(
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  Text(user.name),
                  Text(user.email),
                  Text(user.phone),
                  Text(user.username),
                  Text(user.website),
                  Text(user.id.toString()),
                ],
              ),
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
