// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SportsStruct extends BaseStruct {
  SportsStruct({
    String? createdAt,
    String? description,
    int? id,
    String? name,
  })  : _createdAt = createdAt,
        _description = description,
        _id = id,
        _name = name;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static SportsStruct fromMap(Map<String, dynamic> data) => SportsStruct(
        createdAt: data['created_at'] as String?,
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
      );

  static SportsStruct? maybeFromMap(dynamic data) =>
      data is Map ? SportsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'description': _description,
        'id': _id,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SportsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SportsStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SportsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SportsStruct &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([createdAt, description, id, name]);
}

SportsStruct createSportsStruct({
  String? createdAt,
  String? description,
  int? id,
  String? name,
}) =>
    SportsStruct(
      createdAt: createdAt,
      description: description,
      id: id,
      name: name,
    );
