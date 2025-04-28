import 'dart:convert';

import 'package:equatable/equatable.dart';

class Person extends Equatable {
  int id;
  String name;
  String email;
  Person({required this.id, required this.name, required this.email});

  @override
  String toString() => 'Person(id: $id, name: $name, email: $email)';
  Person copywith({int? id, String? name, String? email}) {
    return Person(id: id ?? this.id, name: this.name, email: this.email);
  }

  //tojson -> Person to Json ->
  // Map<String, dynamic> toJson() {
  //   return {'id': id, 'name': name, 'email': email};
  // }

  //fromjson -> json to person
  // factory Person.fromJson(Map<String, dynamic> json) {
  //   return Person(id: json['id'], name: json['name'], email: json['email']);
  // }

  @override
  List<Object> get props => [id, name, email];

  //tojson -> tomap
  //tomap -> object to map
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email};
  }

  //map to json
  String toJson() {
    return json.encode(toMap());
  }

  //fromjson => fromMap
  //fromMap => map -> object
  // {
  //     id: 1,
  //     name: 'Mukhtar',
  //     email: 'kh.mukhtar60@gmail.com',
  // }
  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(id: map['id'], name: map['name'], email: map['email']);
  }
  //map to json
  factory Person.fromJson(String data) {
    return Person.fromMap(json.decode(data));
  }
}
