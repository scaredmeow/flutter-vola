import '../database.dart';

class GamesTable extends SupabaseTable<GamesRow> {
  @override
  String get tableName => 'games';

  @override
  GamesRow createRow(Map<String, dynamic> data) => GamesRow(data);
}

class GamesRow extends SupabaseDataRow {
  GamesRow(super.data);

  @override
  SupabaseTable get table => GamesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get leagueId => getField<int>('league_id');
  set leagueId(int? value) => setField<int>('league_id', value);

  int? get firstTeamId => getField<int>('first_team_id');
  set firstTeamId(int? value) => setField<int>('first_team_id', value);

  int? get secondTeamId => getField<int>('second_team_id');
  set secondTeamId(int? value) => setField<int>('second_team_id', value);

  int? get sportId => getField<int>('sport_id');
  set sportId(int? value) => setField<int>('sport_id', value);
}
