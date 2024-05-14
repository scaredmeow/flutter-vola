// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreateTeamStruct extends BaseStruct {
  CreateTeamStruct({
    int? sportId,
    String? userId,
    String? name,
    String? description,
  })  : _sportId = sportId,
        _userId = userId,
        _name = name,
        _description = description;

  // "sport_id" field.
  int? _sportId;
  int get sportId => _sportId ?? 0;
  set sportId(int? val) => _sportId = val;
  void incrementSportId(int amount) => _sportId = sportId + amount;
  bool hasSportId() => _sportId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

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

  static CreateTeamStruct fromMap(Map<String, dynamic> data) =>
      CreateTeamStruct(
        sportId: castToType<int>(data['sport_id']),
        userId: data['user_id'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
      );

  static CreateTeamStruct? maybeFromMap(dynamic data) => data is Map
      ? CreateTeamStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sport_id': _sportId,
        'user_id': _userId,
        'name': _name,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sport_id': serializeParam(
          _sportId,
          ParamType.int,
        ),
        'user_id': serializeParam(
          _userId,
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

  static CreateTeamStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreateTeamStruct(
        sportId: deserializeParam(
          data['sport_id'],
          ParamType.int,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
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
  String toString() => 'CreateTeamStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreateTeamStruct &&
        sportId == other.sportId &&
        userId == other.userId &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sportId, userId, name, description]);
}

CreateTeamStruct createCreateTeamStruct({
  int? sportId,
  String? userId,
  String? name,
  String? description,
}) =>
    CreateTeamStruct(
      sportId: sportId,
      userId: userId,
      name: name,
      description: description,
    );
