// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressStruct extends BaseStruct {
  ProgressStruct({
    bool? taskStatus,
    String? userId,
  })  : _taskStatus = taskStatus,
        _userId = userId;

  // "task_status" field.
  bool? _taskStatus;
  bool get taskStatus => _taskStatus ?? false;
  set taskStatus(bool? val) => _taskStatus = val;
  bool hasTaskStatus() => _taskStatus != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

  static ProgressStruct fromMap(Map<String, dynamic> data) => ProgressStruct(
        taskStatus: data['task_status'] as bool?,
        userId: data['user_id'] as String?,
      );

  static ProgressStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProgressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'task_status': _taskStatus,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'task_status': serializeParam(
          _taskStatus,
          ParamType.bool,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProgressStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProgressStruct(
        taskStatus: deserializeParam(
          data['task_status'],
          ParamType.bool,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProgressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProgressStruct &&
        taskStatus == other.taskStatus &&
        userId == other.userId;
  }

  @override
  int get hashCode => const ListEquality().hash([taskStatus, userId]);
}

ProgressStruct createProgressStruct({
  bool? taskStatus,
  String? userId,
}) =>
    ProgressStruct(
      taskStatus: taskStatus,
      userId: userId,
    );
