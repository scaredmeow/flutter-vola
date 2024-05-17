import '../database.dart';

class TeamScheduleTable extends SupabaseTable<TeamScheduleRow> {
  @override
  String get tableName => 'team_schedule';

  @override
  TeamScheduleRow createRow(Map<String, dynamic> data) => TeamScheduleRow(data);
}

class TeamScheduleRow extends SupabaseDataRow {
  TeamScheduleRow(super.data);

  @override
  SupabaseTable get table => TeamScheduleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get opponent => getField<String>('opponent');
  set opponent(String? value) => setField<String>('opponent', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
