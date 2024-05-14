// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTeamsStruct extends BaseStruct {
  DataTeamsStruct({
    int? id,
    String? createdAt,
    String? name,
    String? description,
    List<TeamMembersStruct>? teamMembers,
    SportStruct? sport,
    int? teamMemberCount,
    String? image,
  })  : _id = id,
        _createdAt = createdAt,
        _name = name,
        _description = description,
        _teamMembers = teamMembers,
        _sport = sport,
        _teamMemberCount = teamMemberCount,
        _image = image;

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

  // "team_members" field.
  List<TeamMembersStruct>? _teamMembers;
  List<TeamMembersStruct> get teamMembers => _teamMembers ?? const [];
  set teamMembers(List<TeamMembersStruct>? val) => _teamMembers = val;
  void updateTeamMembers(Function(List<TeamMembersStruct>) updateFn) =>
      updateFn(_teamMembers ??= []);
  bool hasTeamMembers() => _teamMembers != null;

  // "sport" field.
  SportStruct? _sport;
  SportStruct get sport => _sport ?? SportStruct();
  set sport(SportStruct? val) => _sport = val;
  void updateSport(Function(SportStruct) updateFn) =>
      updateFn(_sport ??= SportStruct());
  bool hasSport() => _sport != null;

  // "team_member_count" field.
  int? _teamMemberCount;
  int get teamMemberCount => _teamMemberCount ?? 0;
  set teamMemberCount(int? val) => _teamMemberCount = val;
  void incrementTeamMemberCount(int amount) =>
      _teamMemberCount = teamMemberCount + amount;
  bool hasTeamMemberCount() => _teamMemberCount != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static DataTeamsStruct fromMap(Map<String, dynamic> data) => DataTeamsStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        teamMembers: getStructList(
          data['team_members'],
          TeamMembersStruct.fromMap,
        ),
        sport: SportStruct.maybeFromMap(data['sport']),
        teamMemberCount: castToType<int>(data['team_member_count']),
        image: data['image'] as String?,
      );

  static DataTeamsStruct? maybeFromMap(dynamic data) => data is Map
      ? DataTeamsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'name': _name,
        'description': _description,
        'team_members': _teamMembers?.map((e) => e.toMap()).toList(),
        'sport': _sport?.toMap(),
        'team_member_count': _teamMemberCount,
        'image': _image,
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
        'team_members': serializeParam(
          _teamMembers,
          ParamType.DataStruct,
          true,
        ),
        'sport': serializeParam(
          _sport,
          ParamType.DataStruct,
        ),
        'team_member_count': serializeParam(
          _teamMemberCount,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataTeamsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataTeamsStruct(
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
        teamMembers: deserializeStructParam<TeamMembersStruct>(
          data['team_members'],
          ParamType.DataStruct,
          true,
          structBuilder: TeamMembersStruct.fromSerializableMap,
        ),
        sport: deserializeStructParam(
          data['sport'],
          ParamType.DataStruct,
          false,
          structBuilder: SportStruct.fromSerializableMap,
        ),
        teamMemberCount: deserializeParam(
          data['team_member_count'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataTeamsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataTeamsStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        name == other.name &&
        description == other.description &&
        listEquality.equals(teamMembers, other.teamMembers) &&
        sport == other.sport &&
        teamMemberCount == other.teamMemberCount &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        name,
        description,
        teamMembers,
        sport,
        teamMemberCount,
        image
      ]);
}

DataTeamsStruct createDataTeamsStruct({
  int? id,
  String? createdAt,
  String? name,
  String? description,
  SportStruct? sport,
  int? teamMemberCount,
  String? image,
}) =>
    DataTeamsStruct(
      id: id,
      createdAt: createdAt,
      name: name,
      description: description,
      sport: sport ?? SportStruct(),
      teamMemberCount: teamMemberCount,
      image: image,
    );
