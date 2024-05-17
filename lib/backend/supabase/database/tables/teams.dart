import '../database.dart';

class TeamsTable extends SupabaseTable<TeamsRow> {
  @override
  String get tableName => 'teams';

  @override
  TeamsRow createRow(Map<String, dynamic> data) => TeamsRow(data);
}

class TeamsRow extends SupabaseDataRow {
  TeamsRow(super.data);

  @override
  SupabaseTable get table => TeamsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get sportId => getField<int>('sport_id');
  set sportId(int? value) => setField<int>('sport_id', value);

  int? get organizationId => getField<int>('organization_id');
  set organizationId(int? value) => setField<int>('organization_id', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
