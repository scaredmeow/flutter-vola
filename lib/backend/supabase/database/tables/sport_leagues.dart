import '../database.dart';

class SportLeaguesTable extends SupabaseTable<SportLeaguesRow> {
  @override
  String get tableName => 'sport_leagues';

  @override
  SportLeaguesRow createRow(Map<String, dynamic> data) => SportLeaguesRow(data);
}

class SportLeaguesRow extends SupabaseDataRow {
  SportLeaguesRow(super.data);

  @override
  SupabaseTable get table => SportLeaguesTable();

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

  bool? get isOpen => getField<bool>('is_open');
  set isOpen(bool? value) => setField<bool>('is_open', value);
}
