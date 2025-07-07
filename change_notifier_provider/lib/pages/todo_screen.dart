import 'package:change_notifier_provider/pages/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController todoController = TextEditingController();
    final todos = ref.watch(todosProvider).todos;
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: todoController,
              onSubmitted: (des) {
                ref.read(todosProvider.notifier).newTodo(des);
              },
            ),
            Expanded(
              child: ListView(
                children: [
                  for (final todo in todos)
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(todo.des),
                      value: todo.completed,
                      onChanged: (val) {
                        ref.read(todosProvider.notifier).toggleTodo(todo.id);
                      },
                      secondary: IconButton(
                        onPressed: () {
                          ref.read(todosProvider.notifier).removeTodo(todo.id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
