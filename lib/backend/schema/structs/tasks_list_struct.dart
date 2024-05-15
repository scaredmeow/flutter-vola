// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksListStruct extends BaseStruct {
  TasksListStruct({
    String? createdAt,
    int? id,
    List<String>? progress,
    String? taskDate,
    String? taskDescription,
    String? taskName,
  })  : _createdAt = createdAt,
        _id = id,
        _progress = progress,
        _taskDate = taskDate,
        _taskDescription = taskDescription,
        _taskName = taskName;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "progress" field.
  List<String>? _progress;
  List<String> get progress => _progress ?? const [];
  set progress(List<String>? val) => _progress = val;
  void updateProgress(Function(List<String>) updateFn) =>
      updateFn(_progress ??= []);
  bool hasProgress() => _progress != null;

  // "task_date" field.
  String? _taskDate;
  String get taskDate => _taskDate ?? '';
  set taskDate(String? val) => _taskDate = val;
  bool hasTaskDate() => _taskDate != null;

  // "task_description" field.
  String? _taskDescription;
  String get taskDescription => _taskDescription ?? '';
  set taskDescription(String? val) => _taskDescription = val;
  bool hasTaskDescription() => _taskDescription != null;

  // "task_name" field.
  String? _taskName;
  String get taskName => _taskName ?? '';
  set taskName(String? val) => _taskName = val;
  bool hasTaskName() => _taskName != null;

  static TasksListStruct fromMap(Map<String, dynamic> data) => TasksListStruct(
        createdAt: data['created_at'] as String?,
        id: castToType<int>(data['id']),
        progress: getDataList(data['progress']),
        taskDate: data['task_date'] as String?,
        taskDescription: data['task_description'] as String?,
        taskName: data['task_name'] as String?,
      );

  static TasksListStruct? maybeFromMap(dynamic data) => data is Map
      ? TasksListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'id': _id,
        'progress': _progress,
        'task_date': _taskDate,
        'task_description': _taskDescription,
        'task_name': _taskName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'progress': serializeParam(
          _progress,
          ParamType.String,
          true,
        ),
        'task_date': serializeParam(
          _taskDate,
          ParamType.String,
        ),
        'task_description': serializeParam(
          _taskDescription,
          ParamType.String,
        ),
        'task_name': serializeParam(
          _taskName,
          ParamType.String,
        ),
      }.withoutNulls;

  static TasksListStruct fromSerializableMap(Map<String, dynamic> data) =>
      TasksListStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        progress: deserializeParam<String>(
          data['progress'],
          ParamType.String,
          true,
        ),
        taskDate: deserializeParam(
          data['task_date'],
          ParamType.String,
          false,
        ),
        taskDescription: deserializeParam(
          data['task_description'],
          ParamType.String,
          false,
        ),
        taskName: deserializeParam(
          data['task_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TasksListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TasksListStruct &&
        createdAt == other.createdAt &&
        id == other.id &&
        listEquality.equals(progress, other.progress) &&
        taskDate == other.taskDate &&
        taskDescription == other.taskDescription &&
        taskName == other.taskName;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([createdAt, id, progress, taskDate, taskDescription, taskName]);
}

TasksListStruct createTasksListStruct({
  String? createdAt,
  int? id,
  String? taskDate,
  String? taskDescription,
  String? taskName,
}) =>
    TasksListStruct(
      createdAt: createdAt,
      id: id,
      taskDate: taskDate,
      taskDescription: taskDescription,
      taskName: taskName,
    );
