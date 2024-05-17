import '../database.dart';

class PlayerStatsTable extends SupabaseTable<PlayerStatsRow> {
  @override
  String get tableName => 'player_stats';

  @override
  PlayerStatsRow createRow(Map<String, dynamic> data) => PlayerStatsRow(data);
}

class PlayerStatsRow extends SupabaseDataRow {
  PlayerStatsRow(super.data);

  @override
  SupabaseTable get table => PlayerStatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get statsKey => getField<String>('stats_key');
  set statsKey(String? value) => setField<String>('stats_key', value);

  String? get statsValue => getField<String>('stats_value');
  set statsValue(String? value) => setField<String>('stats_value', value);
}
