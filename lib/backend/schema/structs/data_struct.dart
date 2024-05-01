// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    int? id,
    String? createdAt,
    String? title,
    String? content,
    int? likes,
    List<CommentsStruct>? comments,
    String? postDateStringRepr,
    UserStruct? user,
    int? commentsCount,
    String? image,
  })  : _id = id,
        _createdAt = createdAt,
        _title = title,
        _content = content,
        _likes = likes,
        _comments = comments,
        _postDateStringRepr = postDateStringRepr,
        _user = user,
        _commentsCount = commentsCount,
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

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;
  bool hasContent() => _content != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  set likes(int? val) => _likes = val;
  void incrementLikes(int amount) => _likes = likes + amount;
  bool hasLikes() => _likes != null;

  // "comments" field.
  List<CommentsStruct>? _comments;
  List<CommentsStruct> get comments => _comments ?? const [];
  set comments(List<CommentsStruct>? val) => _comments = val;
  void updateComments(Function(List<CommentsStruct>) updateFn) =>
      updateFn(_comments ??= []);
  bool hasComments() => _comments != null;

  // "post_date_string_repr" field.
  String? _postDateStringRepr;
  String get postDateStringRepr => _postDateStringRepr ?? '';
  set postDateStringRepr(String? val) => _postDateStringRepr = val;
  bool hasPostDateStringRepr() => _postDateStringRepr != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;
  void updateUser(Function(UserStruct) updateFn) =>
      updateFn(_user ??= UserStruct());
  bool hasUser() => _user != null;

  // "comments_count" field.
  int? _commentsCount;
  int get commentsCount => _commentsCount ?? 0;
  set commentsCount(int? val) => _commentsCount = val;
  void incrementCommentsCount(int amount) =>
      _commentsCount = commentsCount + amount;
  bool hasCommentsCount() => _commentsCount != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        title: data['title'] as String?,
        content: data['content'] as String?,
        likes: castToType<int>(data['likes']),
        comments: getStructList(
          data['comments'],
          CommentsStruct.fromMap,
        ),
        postDateStringRepr: data['post_date_string_repr'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
        commentsCount: castToType<int>(data['comments_count']),
        image: data['Image'] as String?,
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'title': _title,
        'content': _content,
        'likes': _likes,
        'comments': _comments?.map((e) => e.toMap()).toList(),
        'post_date_string_repr': _postDateStringRepr,
        'user': _user?.toMap(),
        'comments_count': _commentsCount,
        'Image': _image,
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
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'likes': serializeParam(
          _likes,
          ParamType.int,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.DataStruct,
          true,
        ),
        'post_date_string_repr': serializeParam(
          _postDateStringRepr,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'comments_count': serializeParam(
          _commentsCount,
          ParamType.int,
        ),
        'Image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
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
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        likes: deserializeParam(
          data['likes'],
          ParamType.int,
          false,
        ),
        comments: deserializeStructParam<CommentsStruct>(
          data['comments'],
          ParamType.DataStruct,
          true,
          structBuilder: CommentsStruct.fromSerializableMap,
        ),
        postDateStringRepr: deserializeParam(
          data['post_date_string_repr'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        commentsCount: deserializeParam(
          data['comments_count'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['Image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DataStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        title == other.title &&
        content == other.content &&
        likes == other.likes &&
        listEquality.equals(comments, other.comments) &&
        postDateStringRepr == other.postDateStringRepr &&
        user == other.user &&
        commentsCount == other.commentsCount &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        title,
        content,
        likes,
        comments,
        postDateStringRepr,
        user,
        commentsCount,
        image
      ]);
}

DataStruct createDataStruct({
  int? id,
  String? createdAt,
  String? title,
  String? content,
  int? likes,
  String? postDateStringRepr,
  UserStruct? user,
  int? commentsCount,
  String? image,
}) =>
    DataStruct(
      id: id,
      createdAt: createdAt,
      title: title,
      content: content,
      likes: likes,
      postDateStringRepr: postDateStringRepr,
      user: user ?? UserStruct(),
      commentsCount: commentsCount,
      image: image,
    );
