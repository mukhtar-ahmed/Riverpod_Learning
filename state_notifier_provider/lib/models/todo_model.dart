import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
part 'todo_model.freezed.dart';

Uuid uuid = Uuid();

@freezed
abstract class Todo with _$Todo {
  const factory Todo({
    required String id,
    required String des,
    @Default(false) bool completed,
  }) = _Todo;

  factory Todo.add({required String des}) {
    return Todo(id: uuid.v4(), des: des);
  }
}
