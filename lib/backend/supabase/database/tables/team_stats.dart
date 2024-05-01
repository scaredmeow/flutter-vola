import '../database.dart';

class TeamStatsTable extends SupabaseTable<TeamStatsRow> {
  @override
  String get tableName => 'team_stats';

  @override
  TeamStatsRow createRow(Map<String, dynamic> data) => TeamStatsRow(data);
}

class TeamStatsRow extends SupabaseDataRow {
  TeamStatsRow(super.data);

  @override
  SupabaseTable get table => TeamStatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  int? get leagueId => getField<int>('league_id');
  set leagueId(int? value) => setField<int>('league_id', value);

  int? get organizationId => getField<int>('organization_id');
  set organizationId(int? value) => setField<int>('organization_id', value);

  int? get win => getField<int>('win');
  set win(int? value) => setField<int>('win', value);

  int? get loss => getField<int>('loss');
  set loss(int? value) => setField<int>('loss', value);

  int? get draw => getField<int>('draw');
  set draw(int? value) => setField<int>('draw', value);
}
