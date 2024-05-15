// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListOfScheduleStruct extends BaseStruct {
  ListOfScheduleStruct({
    String? createdAt,
    String? date,
    String? description,
    int? id,
    String? location,
    String? opponent,
    String? title,
  })  : _createdAt = createdAt,
        _date = date,
        _description = description,
        _id = id,
        _location = location,
        _opponent = opponent,
        _title = title;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;
  bool hasDate() => _date != null;

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

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "opponent" field.
  String? _opponent;
  String get opponent => _opponent ?? '';
  set opponent(String? val) => _opponent = val;
  bool hasOpponent() => _opponent != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  static ListOfScheduleStruct fromMap(Map<String, dynamic> data) =>
      ListOfScheduleStruct(
        createdAt: data['created_at'] as String?,
        date: data['date'] as String?,
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        location: data['location'] as String?,
        opponent: data['opponent'] as String?,
        title: data['title'] as String?,
      );

  static ListOfScheduleStruct? maybeFromMap(dynamic data) => data is Map
      ? ListOfScheduleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_at': _createdAt,
        'date': _date,
        'description': _description,
        'id': _id,
        'location': _location,
        'opponent': _opponent,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
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
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'opponent': serializeParam(
          _opponent,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListOfScheduleStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListOfScheduleStruct(
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
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
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        opponent: deserializeParam(
          data['opponent'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListOfScheduleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListOfScheduleStruct &&
        createdAt == other.createdAt &&
        date == other.date &&
        description == other.description &&
        id == other.id &&
        location == other.location &&
        opponent == other.opponent &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([createdAt, date, description, id, location, opponent, title]);
}

ListOfScheduleStruct createListOfScheduleStruct({
  String? createdAt,
  String? date,
  String? description,
  int? id,
  String? location,
  String? opponent,
  String? title,
}) =>
    ListOfScheduleStruct(
      createdAt: createdAt,
      date: date,
      description: description,
      id: id,
      location: location,
      opponent: opponent,
      title: title,
    );
