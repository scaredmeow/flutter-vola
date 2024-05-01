// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActiveRoleStruct extends BaseStruct {
  ActiveRoleStruct({
    String? createdAt,
    int? id,
    String? roleName,
  })  : _createdAt = createdAt,
        _id = id,
        _roleName = roleName;

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

  // "role_name" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  set roleName(String? val) => _roleName = val;
  bool hasRoleName() => _roleName != null;

  static ActiveRoleStruct fromMap(Map<String, dynamic> data) =>
      ActiveRoleStruct(
        createdAt: data['created_at'] as String?,
        id: castToType<int>(data['id']),
        roleName: data['role_name'] as String?,
      );

  static ActiveRoleStruct? maybeFromMap(dynamic data) => data is Map
      ? ActiveRoleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'id': _id,
        'role_name': _roleName,
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
        'role_name': serializeParam(
          _roleName,
          ParamType.String,
        ),
      }.withoutNulls;

  static ActiveRoleStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActiveRoleStruct(
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
        roleName: deserializeParam(
          data['role_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ActiveRoleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActiveRoleStruct &&
        createdAt == other.createdAt &&
        id == other.id &&
        roleName == other.roleName;
  }

  @override
  int get hashCode => const ListEquality().hash([createdAt, id, roleName]);
}

ActiveRoleStruct createActiveRoleStruct({
  String? createdAt,
  int? id,
  String? roleName,
}) =>
    ActiveRoleStruct(
      createdAt: createdAt,
      id: id,
      roleName: roleName,
    );
