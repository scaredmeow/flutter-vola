// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetOneStruct extends BaseStruct {
  GetOneStruct({
    String? createdAt,
    String? description,
    int? id,
    String? name,
    SportStruct? sport,
    int? teamMemberCount,
    List<TeamMembersStruct>? teamMembers,
    String? image,
    String? sportsName,
  })  : _createdAt = createdAt,
        _description = description,
        _id = id,
        _name = name,
        _sport = sport,
        _teamMemberCount = teamMemberCount,
        _teamMembers = teamMembers,
        _image = image,
        _sportsName = sportsName;

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

  // "team_members" field.
  List<TeamMembersStruct>? _teamMembers;
  List<TeamMembersStruct> get teamMembers => _teamMembers ?? const [];
  set teamMembers(List<TeamMembersStruct>? val) => _teamMembers = val;
  void updateTeamMembers(Function(List<TeamMembersStruct>) updateFn) =>
      updateFn(_teamMembers ??= []);
  bool hasTeamMembers() => _teamMembers != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "sports_name" field.
  String? _sportsName;
  String get sportsName => _sportsName ?? '';
  set sportsName(String? val) => _sportsName = val;
  bool hasSportsName() => _sportsName != null;

  static GetOneStruct fromMap(Map<String, dynamic> data) => GetOneStruct(
        createdAt: data['created_at'] as String?,
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        sport: SportStruct.maybeFromMap(data['sport']),
        teamMemberCount: castToType<int>(data['team_member_count']),
        teamMembers: getStructList(
          data['team_members'],
          TeamMembersStruct.fromMap,
        ),
        image: data['image'] as String?,
        sportsName: data['sports_name'] as String?,
      );

  static GetOneStruct? maybeFromMap(dynamic data) =>
      data is Map ? GetOneStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'description': _description,
        'id': _id,
        'name': _name,
        'sport': _sport?.toMap(),
        'team_member_count': _teamMemberCount,
        'team_members': _teamMembers?.map((e) => e.toMap()).toList(),
        'image': _image,
        'sports_name': _sportsName,
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
        'sport': serializeParam(
          _sport,
          ParamType.DataStruct,
        ),
        'team_member_count': serializeParam(
          _teamMemberCount,
          ParamType.int,
        ),
        'team_members': serializeParam(
          _teamMembers,
          ParamType.DataStruct,
          true,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'sports_name': serializeParam(
          _sportsName,
          ParamType.String,
        ),
      }.withoutNulls;

  static GetOneStruct fromSerializableMap(Map<String, dynamic> data) =>
      GetOneStruct(
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
        teamMembers: deserializeStructParam<TeamMembersStruct>(
          data['team_members'],
          ParamType.DataStruct,
          true,
          structBuilder: TeamMembersStruct.fromSerializableMap,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        sportsName: deserializeParam(
          data['sports_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GetOneStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GetOneStruct &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        sport == other.sport &&
        teamMemberCount == other.teamMemberCount &&
        listEquality.equals(teamMembers, other.teamMembers) &&
        image == other.image &&
        sportsName == other.sportsName;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdAt,
        description,
        id,
        name,
        sport,
        teamMemberCount,
        teamMembers,
        image,
        sportsName
      ]);
}

GetOneStruct createGetOneStruct({
  String? createdAt,
  String? description,
  int? id,
  String? name,
  SportStruct? sport,
  int? teamMemberCount,
  String? image,
  String? sportsName,
}) =>
    GetOneStruct(
      createdAt: createdAt,
      description: description,
      id: id,
      name: name,
      sport: sport ?? SportStruct(),
      teamMemberCount: teamMemberCount,
      image: image,
      sportsName: sportsName,
    );
