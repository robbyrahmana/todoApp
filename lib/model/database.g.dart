// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || date != null) {
      map['date'] = Variable<DateTime>(date);
    }
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime>(time);
    }
    if (!nullToAbsent || task != null) {
      map['task'] = Variable<String>(task);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || isFinish != null) {
      map['is_finish'] = Variable<bool>(isFinish);
    }
    if (!nullToAbsent || todoType != null) {
      map['todo_type'] = Variable<int>(todoType);
    }
    return map;
  }

  TodoCompanion toCompanion(bool nullToAbsent) {
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
    );
  }

  factory TodoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
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
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<DateTime>(date),
      'time': serializer.toJson<DateTime>(time),
      'task': serializer.toJson<String>(task),
      'description': serializer.toJson<String>(description),
      'isFinish': serializer.toJson<bool>(isFinish),
      'todoType': serializer.toJson<int>(todoType),
    };
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
      id.hashCode,
      $mrjc(
          date.hashCode,
          $mrjc(
              time.hashCode,
              $mrjc(
                  task.hashCode,
                  $mrjc(description.hashCode,
                      $mrjc(isFinish.hashCode, todoType.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TodoData &&
          other.id == this.id &&
          other.date == this.date &&
          other.time == this.time &&
          other.task == this.task &&
          other.description == this.description &&
          other.isFinish == this.isFinish &&
          other.todoType == this.todoType);
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
  TodoCompanion.insert({
    this.id = const Value.absent(),
    @required DateTime date,
    @required DateTime time,
    @required String task,
    @required String description,
    @required bool isFinish,
    @required int todoType,
  })  : date = Value(date),
        time = Value(time),
        task = Value(task),
        description = Value(description),
        isFinish = Value(isFinish),
        todoType = Value(todoType);
  static Insertable<TodoData> custom({
    Expression<int> id,
    Expression<DateTime> date,
    Expression<DateTime> time,
    Expression<String> task,
    Expression<String> description,
    Expression<bool> isFinish,
    Expression<int> todoType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (task != null) 'task': task,
      if (description != null) 'description': description,
      if (isFinish != null) 'is_finish': isFinish,
      if (todoType != null) 'todo_type': todoType,
    });
  }

  TodoCompanion copyWith(
      {Value<int> id,
      Value<DateTime> date,
      Value<DateTime> time,
      Value<String> task,
      Value<String> description,
      Value<bool> isFinish,
      Value<int> todoType}) {
    return TodoCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      time: time ?? this.time,
      task: task ?? this.task,
      description: description ?? this.description,
      isFinish: isFinish ?? this.isFinish,
      todoType: todoType ?? this.todoType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (task.present) {
      map['task'] = Variable<String>(task.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isFinish.present) {
      map['is_finish'] = Variable<bool>(isFinish.value);
    }
    if (todoType.present) {
      map['todo_type'] = Variable<int>(todoType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoCompanion(')
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
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
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
  VerificationContext validateIntegrity(Insertable<TodoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date'], _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('task')) {
      context.handle(
          _taskMeta, task.isAcceptableOrUnknown(data['task'], _taskMeta));
    } else if (isInserting) {
      context.missing(_taskMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('is_finish')) {
      context.handle(_isFinishMeta,
          isFinish.isAcceptableOrUnknown(data['is_finish'], _isFinishMeta));
    } else if (isInserting) {
      context.missing(_isFinishMeta);
    }
    if (data.containsKey('todo_type')) {
      context.handle(_todoTypeMeta,
          todoType.isAcceptableOrUnknown(data['todo_type'], _todoTypeMeta));
    } else if (isInserting) {
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
  $TodoTable createAlias(String alias) {
    return $TodoTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TodoTable _todo;
  $TodoTable get todo => _todo ??= $TodoTable(this);
  Selectable<TodoData> _getByType(int var1) {
    return customSelect(
        'SELECT * FROM todo WHERE todo_type = ? order by is_finish, date, time',
        variables: [Variable.withInt(var1)],
        readsFrom: {todo}).map(todo.mapFromRow);
  }

  Future<int> _completeTask(int var1) {
    return customUpdate(
      'UPDATE todo SET is_finish = 1 WHERE id = ?',
      variables: [Variable.withInt(var1)],
      updates: {todo},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> _deleteTask(int var1) {
    return customUpdate(
      'DELETE FROM todo WHERE id = ?',
      variables: [Variable.withInt(var1)],
      updates: {todo},
      updateKind: UpdateKind.delete,
    );
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todo];
}
