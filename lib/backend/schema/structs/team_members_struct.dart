// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMembersStruct extends BaseStruct {
  TeamMembersStruct({
    UserStruct? user,
    int? id,
    bool? isOwner,
    String? joinedAt,
  })  : _user = user,
        _id = id,
        _isOwner = isOwner,
        _joinedAt = joinedAt;

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

  static TeamMembersStruct fromMap(Map<String, dynamic> data) =>
      TeamMembersStruct(
        user: UserStruct.maybeFromMap(data['user']),
        id: castToType<int>(data['id']),
        isOwner: data['is_owner'] as bool?,
        joinedAt: data['joined_at'] as String?,
      );

  static TeamMembersStruct? maybeFromMap(dynamic data) => data is Map
      ? TeamMembersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'user': _user?.toMap(),
        'id': _id,
        'is_owner': _isOwner,
        'joined_at': _joinedAt,
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
      );

  @override
  String toString() => 'TeamMembersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TeamMembersStruct &&
        user == other.user &&
        id == other.id &&
        isOwner == other.isOwner &&
        joinedAt == other.joinedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([user, id, isOwner, joinedAt]);
}

TeamMembersStruct createTeamMembersStruct({
  UserStruct? user,
  int? id,
  bool? isOwner,
  String? joinedAt,
}) =>
    TeamMembersStruct(
      user: user ?? UserStruct(),
      id: id,
      isOwner: isOwner,
      joinedAt: joinedAt,
    );
