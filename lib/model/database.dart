import 'package:flutter/widgets.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:todoapp/model/todo.dart';

part 'database.g.dart';

@UseMoor(
  tables: [Todo],
  queries: {
    '_getByType':
        'SELECT * FROM todo WHERE todo_type = ? order by is_finish, date, time',
    '_completeTask': 'UPDATE todo SET is_finish = 1 WHERE id = ?',
    '_deleteTask': 'DELETE FROM todo WHERE id = ?',
  },
)
class Database extends _$Database with ChangeNotifier {
  Database()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: "db_todos.sqlite"));

  @override
  int get schemaVersion => 1;

  // All todo table operation
  Stream<List<TodoData>> getTodoByType(int type) => watchGetByType(type);

  Future insertTodoEntries(TodoData entry) {
    return transaction((tx) async {
      await tx.into(todo).insert(entry);
    });
  }

  Future completeTodoEntries(int id) {
    return transaction((tx) async {
      await _completeTask(id, operateOn: tx);
    });
  }

  Future deleteTodoEntries(int id) {
    return transaction((tx) async {
      await _deleteTask(id, operateOn: tx);
    });
  }
}
