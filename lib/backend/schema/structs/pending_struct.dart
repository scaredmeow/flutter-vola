// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PendingStruct extends BaseStruct {
  PendingStruct({
    int? id,
    bool? isOwner,
    String? joinedAt,
    bool? pending,
    UserStruct? user,
  })  : _id = id,
        _isOwner = isOwner,
        _joinedAt = joinedAt,
        _pending = pending,
        _user = user;

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

  // "pending" field.
  bool? _pending;
  bool get pending => _pending ?? false;
  set pending(bool? val) => _pending = val;
  bool hasPending() => _pending != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;
  void updateUser(Function(UserStruct) updateFn) =>
      updateFn(_user ??= UserStruct());
  bool hasUser() => _user != null;

  static PendingStruct fromMap(Map<String, dynamic> data) => PendingStruct(
        id: castToType<int>(data['id']),
        isOwner: data['is_owner'] as bool?,
        joinedAt: data['joined_at'] as String?,
        pending: data['pending'] as bool?,
        user: UserStruct.maybeFromMap(data['user']),
      );

  static PendingStruct? maybeFromMap(dynamic data) =>
      data is Map ? PendingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'is_owner': _isOwner,
        'joined_at': _joinedAt,
        'pending': _pending,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'pending': serializeParam(
          _pending,
          ParamType.bool,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PendingStruct fromSerializableMap(Map<String, dynamic> data) =>
      PendingStruct(
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
        pending: deserializeParam(
          data['pending'],
          ParamType.bool,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PendingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PendingStruct &&
        id == other.id &&
        isOwner == other.isOwner &&
        joinedAt == other.joinedAt &&
        pending == other.pending &&
        user == other.user;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, isOwner, joinedAt, pending, user]);
}

PendingStruct createPendingStruct({
  int? id,
  bool? isOwner,
  String? joinedAt,
  bool? pending,
  UserStruct? user,
}) =>
    PendingStruct(
      id: id,
      isOwner: isOwner,
      joinedAt: joinedAt,
      pending: pending,
      user: user ?? UserStruct(),
    );
