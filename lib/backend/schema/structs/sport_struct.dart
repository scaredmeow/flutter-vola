// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SportStruct extends BaseStruct {
  SportStruct({
    int? id,
    String? createdAt,
    String? name,
    String? description,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _description = description;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  static SportStruct fromMap(Map<String, dynamic> data) => SportStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
      );

  static SportStruct? maybeFromMap(dynamic data) =>
      data is Map ? SportStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static SportStruct fromSerializableMap(Map<String, dynamic> data) =>
      SportStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SportStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SportStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, name, description]);
}

SportStruct createSportStruct({
  int? id,
  String? createdAt,
  String? name,
  String? description,
}) =>
    SportStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      description: description,
    );
