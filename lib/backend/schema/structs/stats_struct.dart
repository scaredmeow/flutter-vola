// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatsStruct extends BaseStruct {
  StatsStruct({
    int? id,
    String? statsKey,
    String? statsValue,
    String? userId,
  })  : _id = id,
        _statsKey = statsKey,
        _statsValue = statsValue,
        _userId = userId;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "stats_key" field.
  String? _statsKey;
  String get statsKey => _statsKey ?? '';
  set statsKey(String? val) => _statsKey = val;
  bool hasStatsKey() => _statsKey != null;

  // "stats_value" field.
  String? _statsValue;
  String get statsValue => _statsValue ?? '';
  set statsValue(String? val) => _statsValue = val;
  bool hasStatsValue() => _statsValue != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;
  bool hasUserId() => _userId != null;

  static StatsStruct fromMap(Map<String, dynamic> data) => StatsStruct(
        id: castToType<int>(data['id']),
        statsKey: data['stats_key'] as String?,
        statsValue: data['stats_value'] as String?,
        userId: data['user_id'] as String?,
      );

  static StatsStruct? maybeFromMap(dynamic data) =>
      data is Map ? StatsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'stats_key': _statsKey,
        'stats_value': _statsValue,
        'user_id': _userId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'stats_key': serializeParam(
          _statsKey,
          ParamType.String,
        ),
        'stats_value': serializeParam(
          _statsValue,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
      }.withoutNulls;

  static StatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        statsKey: deserializeParam(
          data['stats_key'],
          ParamType.String,
          false,
        ),
        statsValue: deserializeParam(
          data['stats_value'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatsStruct &&
        id == other.id &&
        statsKey == other.statsKey &&
        statsValue == other.statsValue &&
        userId == other.userId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, statsKey, statsValue, userId]);
}

StatsStruct createStatsStruct({
  int? id,
  String? statsKey,
  String? statsValue,
  String? userId,
}) =>
    StatsStruct(
      id: id,
      statsKey: statsKey,
      statsValue: statsValue,
      userId: userId,
    );
