import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int userId;
  final int id;
  final String title;
  final String body;
  User({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  User copyWith({int? userId, int? id, String? title, String? body}) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  Map<String, dynamic> toMap() {
    return {'userId': userId, 'id': id, 'title': title, 'body': body};
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      body: map['body'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  List<Object> get props => [userId, id, title, body];
}
