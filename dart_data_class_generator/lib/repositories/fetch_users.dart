import 'package:dart_data_class_generator/models/user.dart';
import 'package:dio/dio.dart';

Future<List<User>> fetchUser() async {
  try {
    print("helo");
    final Response response = await Dio().get(
      'https://jsonplaceholder.typicode.com/users',
    );
    final List userList = response.data;
    print(userList[0]);
    final users = [for (final user in userList) User.fromMap(user)];
    print(users);
    return users;
  } catch (e) {
    rethrow;
  }
}
