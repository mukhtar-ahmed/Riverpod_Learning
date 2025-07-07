import 'package:uuid/uuid.dart';

Uuid uuid = Uuid();

class TodoModel {
  String id;
  String des;
  bool completed;
  TodoModel({required this.id, required this.des, this.completed = false});

  factory TodoModel.add(String des) {
    return TodoModel(id: uuid.v4(), des: des);
  }
}
