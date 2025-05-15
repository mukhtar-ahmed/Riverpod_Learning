import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:future_provider2/models/user.dart';
import 'package:future_provider2/provider/dio_provider.dart';

part 'user_page_provider.g.dart';

// final userProvider = FutureProvider.autoDispose<List<User>>((ref) async {
//   ref.onDispose(() {
//     print("dispose future provider");
//   });

//   final response = await ref.watch(dioProvider).get('/users');
//   final List userList = response.data;
//   final List<User> users = [];
//   for (int i = 0; i < userList.length; i++) {
//     users.add(User.fromJson(userList[i]));
//   }
//   return users;
// });

@riverpod
Future<List<User>> user(Ref ref) async {
  ref.onDispose(() {
    print("dispose future provider");
  });

  final response = await ref.watch(dioProvider).get('/users');
  final List userList = response.data;
  final List<User> users = [];
  for (int i = 0; i < userList.length; i++) {
    users.add(User.fromJson(userList[i]));
  }
  return users;
}

// final userDetailsProvider = FutureProvider.autoDispose.family<User, int>((
//   ref,
//   id,
// ) async {
//   ref.onDispose(() {
//     print("dispose userDetailsProvider ");
//   });
//   final response = await ref.watch(dioProvider).get('/users/$id');
//   return User.fromJson(response.data);
// });

@riverpod
FutureOr<User> userDetails(Ref ref, int id) async {
  ref.onDispose(() {
    print("dispose userDetailsProvider ");
  });
  final response = await ref.watch(dioProvider).get('/users/$id');
  return User.fromJson(response.data);
}
