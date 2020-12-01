import 'package:moor/moor.dart';

class Todo extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get date => dateTime()();
  DateTimeColumn get time => dateTime()();
  TextColumn get task => text()();
  TextColumn get description => text()();
  BoolColumn get isFinish => boolean()();
  IntColumn get todoType => integer()();
}

enum TodoType { TYPE_TASK, TYPE_EVENT }
