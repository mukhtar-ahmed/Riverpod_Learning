import 'package:dio/dio.dart';
import 'package:flutter_dart_class_generator/model/user.dart';

Future<List<User>> fetchUser() async {
  try {
    final Response response = await Dio().get(
      "https://jsonplaceholder.typicode.com/users",
    );
    print(response);
    
    final List userList = response.data;
    final users = [for (final user in userList) User.fromMap(user)];
    print(users[0]);
    return users;
    // return userList;
  } catch (e) {
    rethrow;
  }
}
