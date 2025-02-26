// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMembersStruct extends BaseStruct {
  TeamMembersStruct({
    UserStruct? user,
    int? id,
    bool? isOwner,
    String? joinedAt,
    int? taskCount,
  })  : _user = user,
        _id = id,
        _isOwner = isOwner,
        _joinedAt = joinedAt,
        _taskCount = taskCount;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;
  void updateUser(Function(UserStruct) updateFn) =>
      updateFn(_user ??= UserStruct());
  bool hasUser() => _user != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "is_owner" field.
  bool? _isOwner;
  bool get isOwner => _isOwner ?? false;
  set isOwner(bool? val) => _isOwner = val;
  bool hasIsOwner() => _isOwner != null;

  // "joined_at" field.
  String? _joinedAt;
  String get joinedAt => _joinedAt ?? '';
  set joinedAt(String? val) => _joinedAt = val;
  bool hasJoinedAt() => _joinedAt != null;

  // "task_count" field.
  int? _taskCount;
  int get taskCount => _taskCount ?? 0;
  set taskCount(int? val) => _taskCount = val;
  void incrementTaskCount(int amount) => _taskCount = taskCount + amount;
  bool hasTaskCount() => _taskCount != null;

  static TeamMembersStruct fromMap(Map<String, dynamic> data) =>
      TeamMembersStruct(
        user: UserStruct.maybeFromMap(data['user']),
        id: castToType<int>(data['id']),
        isOwner: data['is_owner'] as bool?,
        joinedAt: data['joined_at'] as String?,
        taskCount: castToType<int>(data['task_count']),
      );

  static TeamMembersStruct? maybeFromMap(dynamic data) => data is Map
      ? TeamMembersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user?.toMap(),
        'id': _id,
        'is_owner': _isOwner,
        'joined_at': _joinedAt,
        'task_count': _taskCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'is_owner': serializeParam(
          _isOwner,
          ParamType.bool,
        ),
        'joined_at': serializeParam(
          _joinedAt,
          ParamType.String,
        ),
        'task_count': serializeParam(
          _taskCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static TeamMembersStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamMembersStruct(
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        isOwner: deserializeParam(
          data['is_owner'],
          ParamType.bool,
          false,
        ),
        joinedAt: deserializeParam(
          data['joined_at'],
          ParamType.String,
          false,
        ),
        taskCount: deserializeParam(
          data['task_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TeamMembersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamMembersStruct &&
        user == other.user &&
        id == other.id &&
        isOwner == other.isOwner &&
        joinedAt == other.joinedAt &&
        taskCount == other.taskCount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([user, id, isOwner, joinedAt, taskCount]);
}

TeamMembersStruct createTeamMembersStruct({
  UserStruct? user,
  int? id,
  bool? isOwner,
  String? joinedAt,
  int? taskCount,
}) =>
    TeamMembersStruct(
      user: user ?? UserStruct(),
      id: id,
      isOwner: isOwner,
      joinedAt: joinedAt,
      taskCount: taskCount,
    );
