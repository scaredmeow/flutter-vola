import '../database.dart';

class GameScoresTable extends SupabaseTable<GameScoresRow> {
  @override
  String get tableName => 'game_scores';

  @override
  GameScoresRow createRow(Map<String, dynamic> data) => GameScoresRow(data);
}

class GameScoresRow extends SupabaseDataRow {
  GameScoresRow(super.data);

  @override
  SupabaseTable get table => GameScoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get totalScore => getField<int>('total_score');
  set totalScore(int? value) => setField<int>('total_score', value);

  int? get onePoint => getField<int>('one_point');
  set onePoint(int? value) => setField<int>('one_point', value);

  int? get twoPoints => getField<int>('two_points');
  set twoPoints(int? value) => setField<int>('two_points', value);

  int? get threePoints => getField<int>('three_points');
  set threePoints(int? value) => setField<int>('three_points', value);

  int? get fourPoints => getField<int>('four_points');
  set fourPoints(int? value) => setField<int>('four_points', value);

  int? get fivePoints => getField<int>('five_points');
  set fivePoints(int? value) => setField<int>('five_points', value);

  int? get sixPoints => getField<int>('six_points');
  set sixPoints(int? value) => setField<int>('six_points', value);

  int? get sevenPoints => getField<int>('seven_points');
  set sevenPoints(int? value) => setField<int>('seven_points', value);

  int? get eightPoints => getField<int>('eight_points');
  set eightPoints(int? value) => setField<int>('eight_points', value);

  int? get gameId => getField<int>('game_id');
  set gameId(int? value) => setField<int>('game_id', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get playerId => getField<String>('player_id');
  set playerId(String? value) => setField<String>('player_id', value);
}
