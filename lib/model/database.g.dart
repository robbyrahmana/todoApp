// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class TodoData extends DataClass implements Insertable<TodoData> {
  final int id;
  final DateTime date;
  final DateTime time;
  final String task;
  final String description;
  final bool isFinish;
  final int todoType;
  TodoData(
      {@required this.id,
      @required this.date,
      @required this.time,
      @required this.task,
      @required this.description,
      @required this.isFinish,
      @required this.todoType});
  factory TodoData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return TodoData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      date:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}date']),
      time:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
      task: stringType.mapFromDatabaseResponse(data['${effectivePrefix}task']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      isFinish:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}is_finish']),
      todoType:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}todo_type']),
    );
  }
  factory TodoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return TodoData(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<DateTime>(json['date']),
      time: serializer.fromJson<DateTime>(json['time']),
      task: serializer.fromJson<String>(json['task']),
      description: serializer.fromJson<String>(json['description']),
      isFinish: serializer.fromJson<bool>(json['isFinish']),
      todoType: serializer.fromJson<int>(json['todoType']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'time': serializer.toJson<DateTime>(time),
      'task': serializer.toJson<String>(task),
      'description': serializer.toJson<String>(description),
      'isFinish': serializer.toJson<bool>(isFinish),
      'todoType': serializer.toJson<int>(todoType),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TodoData>>(bool nullToAbsent) {
    return TodoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
      task: task == null && nullToAbsent ? const Value.absent() : Value(task),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      isFinish: isFinish == null && nullToAbsent
          ? const Value.absent()
          : Value(isFinish),
      todoType: todoType == null && nullToAbsent
          ? const Value.absent()
          : Value(todoType),
    ) as T;
  }

  TodoData copyWith(
          {int id,
          DateTime date,
          DateTime time,
          String task,
          String description,
          bool isFinish,
          int todoType}) =>
      TodoData(
        id: id ?? this.id,
        date: date ?? this.date,
        time: time ?? this.time,
        task: task ?? this.task,
        description: description ?? this.description,
        isFinish: isFinish ?? this.isFinish,
        todoType: todoType ?? this.todoType,
      );
  @override
  String toString() {
    return (StringBuffer('TodoData(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('task: $task, ')
          ..write('description: $description, ')
          ..write('isFinish: $isFinish, ')
          ..write('todoType: $todoType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      $mrjc(
          $mrjc(
              $mrjc(
                  $mrjc($mrjc($mrjc(0, id.hashCode), date.hashCode),
                      time.hashCode),
                  task.hashCode),
              description.hashCode),
          isFinish.hashCode),
      todoType.hashCode));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TodoData &&
          other.id == id &&
          other.date == date &&
          other.time == time &&
          other.task == task &&
          other.description == description &&
          other.isFinish == isFinish &&
          other.todoType == todoType);
}

class TodoCompanion extends UpdateCompanion<TodoData> {
  final Value<int> id;
  final Value<DateTime> date;
  final Value<DateTime> time;
  final Value<String> task;
  final Value<String> description;
  final Value<bool> isFinish;
  final Value<int> todoType;
  const TodoCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.time = const Value.absent(),
    this.task = const Value.absent(),
    this.description = const Value.absent(),
    this.isFinish = const Value.absent(),
    this.todoType = const Value.absent(),
  });
}

class $TodoTable extends Todo with TableInfo<$TodoTable, TodoData> {
  final GeneratedDatabase _db;
  final String _alias;
  $TodoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false, hasAutoIncrement: true);
  }

  final VerificationMeta _dateMeta = const VerificationMeta('date');
  GeneratedDateTimeColumn _date;
  @override
  GeneratedDateTimeColumn get date => _date ??= _constructDate();
  GeneratedDateTimeColumn _constructDate() {
    return GeneratedDateTimeColumn(
      'date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedDateTimeColumn _time;
  @override
  GeneratedDateTimeColumn get time => _time ??= _constructTime();
  GeneratedDateTimeColumn _constructTime() {
    return GeneratedDateTimeColumn(
      'time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _taskMeta = const VerificationMeta('task');
  GeneratedTextColumn _task;
  @override
  GeneratedTextColumn get task => _task ??= _constructTask();
  GeneratedTextColumn _constructTask() {
    return GeneratedTextColumn(
      'task',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isFinishMeta = const VerificationMeta('isFinish');
  GeneratedBoolColumn _isFinish;
  @override
  GeneratedBoolColumn get isFinish => _isFinish ??= _constructIsFinish();
  GeneratedBoolColumn _constructIsFinish() {
    return GeneratedBoolColumn(
      'is_finish',
      $tableName,
      false,
    );
  }

  final VerificationMeta _todoTypeMeta = const VerificationMeta('todoType');
  GeneratedIntColumn _todoType;
  @override
  GeneratedIntColumn get todoType => _todoType ??= _constructTodoType();
  GeneratedIntColumn _constructTodoType() {
    return GeneratedIntColumn(
      'todo_type',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, date, time, task, description, isFinish, todoType];
  @override
  $TodoTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'todo';
  @override
  final String actualTableName = 'todo';
  @override
  VerificationContext validateIntegrity(TodoCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.date.present) {
      context.handle(
          _dateMeta, date.isAcceptableValue(d.date.value, _dateMeta));
    } else if (date.isRequired && isInserting) {
      context.missing(_dateMeta);
    }
    if (d.time.present) {
      context.handle(
          _timeMeta, time.isAcceptableValue(d.time.value, _timeMeta));
    } else if (time.isRequired && isInserting) {
      context.missing(_timeMeta);
    }
    if (d.task.present) {
      context.handle(
          _taskMeta, task.isAcceptableValue(d.task.value, _taskMeta));
    } else if (task.isRequired && isInserting) {
      context.missing(_taskMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (description.isRequired && isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.isFinish.present) {
      context.handle(_isFinishMeta,
          isFinish.isAcceptableValue(d.isFinish.value, _isFinishMeta));
    } else if (isFinish.isRequired && isInserting) {
      context.missing(_isFinishMeta);
    }
    if (d.todoType.present) {
      context.handle(_todoTypeMeta,
          todoType.isAcceptableValue(d.todoType.value, _todoTypeMeta));
    } else if (todoType.isRequired && isInserting) {
      context.missing(_todoTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TodoData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TodoCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.date.present) {
      map['date'] = Variable<DateTime, DateTimeType>(d.date.value);
    }
    if (d.time.present) {
      map['time'] = Variable<DateTime, DateTimeType>(d.time.value);
    }
    if (d.task.present) {
      map['task'] = Variable<String, StringType>(d.task.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.isFinish.present) {
      map['is_finish'] = Variable<bool, BoolType>(d.isFinish.value);
    }
    if (d.todoType.present) {
      map['todo_type'] = Variable<int, IntType>(d.todoType.value);
    }
    return map;
  }

  @override
  $TodoTable createAlias(String alias) {
    return $TodoTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $TodoTable _todo;
  $TodoTable get todo => _todo ??= $TodoTable(this);
  TodoData _rowToTodoData(QueryRow row) {
    return TodoData(
      id: row.readInt('id'),
      date: row.readDateTime('date'),
      time: row.readDateTime('time'),
      task: row.readString('task'),
      description: row.readString('description'),
      isFinish: row.readBool('is_finish'),
      todoType: row.readInt('todo_type'),
    );
  }

  Future<List<TodoData>> _getByType(int var1, {QueryEngine operateOn}) {
    return (operateOn ?? this).customSelect(
        'SELECT * FROM todo WHERE todo_type = ? order by is_finish, date, time',
        variables: [
          Variable.withInt(var1),
        ]).then((rows) => rows.map(_rowToTodoData).toList());
  }

  Stream<List<TodoData>> watchGetByType(int var1) {
    return customSelectStream(
        'SELECT * FROM todo WHERE todo_type = ? order by is_finish, date, time',
        variables: [
          Variable.withInt(var1),
        ],
        readsFrom: {
          todo
        }).map((rows) => rows.map(_rowToTodoData).toList());
  }

  Future<int> _completeTask(int var1, {QueryEngine operateOn}) {
    return (operateOn ?? this)
        .customUpdate('UPDATE todo SET is_finish = 1 WHERE id = ?', variables: [
      Variable.withInt(var1),
    ], updates: {
      todo
    });
  }

  Future<int> _deleteTask(int var1, {QueryEngine operateOn}) {
    return (operateOn ?? this)
        .customUpdate('DELETE FROM todo WHERE id = ?', variables: [
      Variable.withInt(var1),
    ], updates: {
      todo
    });
  }

  @override
  List<TableInfo> get allTables => [todo];
}
