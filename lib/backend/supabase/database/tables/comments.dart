import '../database.dart';

class CommentsTable extends SupabaseTable<CommentsRow> {
  @override
  String get tableName => 'comments';

  @override
  CommentsRow createRow(Map<String, dynamic> data) => CommentsRow(data);
}

class CommentsRow extends SupabaseDataRow {
  CommentsRow(super.data);

  @override
  SupabaseTable get table => CommentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get postId => getField<int>('post_id');
  set postId(int? value) => setField<int>('post_id', value);
}
