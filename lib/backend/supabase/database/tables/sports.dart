import '../database.dart';

class SportsTable extends SupabaseTable<SportsRow> {
  @override
  String get tableName => 'sports';

  @override
  SportsRow createRow(Map<String, dynamic> data) => SportsRow(data);
}

class SportsRow extends SupabaseDataRow {
  SportsRow(super.data);

  @override
  SupabaseTable get table => SportsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
