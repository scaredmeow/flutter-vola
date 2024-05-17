// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsStruct extends BaseStruct {
  PostsStruct({
    String? id,
  }) : _id = id;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static PostsStruct fromMap(Map<String, dynamic> data) => PostsStruct(
        id: data['id'] as String?,
      );

  static PostsStruct? maybeFromMap(dynamic data) =>
      data is Map ? PostsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static PostsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PostsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostsStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

PostsStruct createPostsStruct({
  String? id,
}) =>
    PostsStruct(
      id: id,
    );
