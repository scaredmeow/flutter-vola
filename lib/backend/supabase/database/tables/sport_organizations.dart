import '../database.dart';

class SportOrganizationsTable extends SupabaseTable<SportOrganizationsRow> {
  @override
  String get tableName => 'sport_organizations';

  @override
  SportOrganizationsRow createRow(Map<String, dynamic> data) =>
      SportOrganizationsRow(data);
}

class SportOrganizationsRow extends SupabaseDataRow {
  SportOrganizationsRow(super.data);

  @override
  SupabaseTable get table => SportOrganizationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get sportId => getField<int>('sport_id');
  set sportId(int? value) => setField<int>('sport_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
