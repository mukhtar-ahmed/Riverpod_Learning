import 'package:change_notifier_provider/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoNotifier extends ChangeNotifier {
  final List<TodoModel> todos = [];

  newTodo(String des) {
    todos.add(TodoModel.add(des));
    notifyListeners();
  }

  toggleTodo(String id) {
    final todo = todos.firstWhere((todo) => todo.id == id);
    todo.completed = !todo.completed;
    notifyListeners();
  }

  removeTodo(String id) {
    todos.removeWhere((todo) => todo.id == id);
    notifyListeners();
  }
}

final todosProvider = ChangeNotifierProvider<TodoNotifier>((ref) {
  return TodoNotifier();
});
