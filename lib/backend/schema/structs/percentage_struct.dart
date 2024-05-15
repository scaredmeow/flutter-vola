// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PercentageStruct extends BaseStruct {
  PercentageStruct({
    String? message,
  }) : _message = message;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  static PercentageStruct fromMap(Map<String, dynamic> data) =>
      PercentageStruct(
        message: data['message'] as String?,
      );

  static PercentageStruct? maybeFromMap(dynamic data) => data is Map
      ? PercentageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'message': _message,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
      }.withoutNulls;

  static PercentageStruct fromSerializableMap(Map<String, dynamic> data) =>
      PercentageStruct(
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PercentageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PercentageStruct && message == other.message;
  }

  @override
  int get hashCode => const ListEquality().hash([message]);
}

PercentageStruct createPercentageStruct({
  String? message,
}) =>
    PercentageStruct(
      message: message,
    );
