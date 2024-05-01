// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsStruct extends BaseStruct {
  CommentsStruct({
    String? content,
    String? createdAt,
    int? id,
  })  : _content = content,
        _createdAt = createdAt,
        _id = id;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

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

  static CommentsStruct fromMap(Map<String, dynamic> data) => CommentsStruct(
        content: data['content'] as String?,
        createdAt: data['created_at'] as String?,
        id: castToType<int>(data['id']),
      );

  static CommentsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CommentsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'content': _content,
        'created_at': _createdAt,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static CommentsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentsStruct(
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
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
      );

  @override
  String toString() => 'CommentsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommentsStruct &&
        content == other.content &&
        createdAt == other.createdAt &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([content, createdAt, id]);
}

CommentsStruct createCommentsStruct({
  String? content,
  String? createdAt,
  int? id,
}) =>
    CommentsStruct(
      content: content,
      createdAt: createdAt,
      id: id,
    );
