import '../database.dart';

class GameDetailsTable extends SupabaseTable<GameDetailsRow> {
  @override
  String get tableName => 'game_details';

  @override
  GameDetailsRow createRow(Map<String, dynamic> data) => GameDetailsRow(data);
}

class GameDetailsRow extends SupabaseDataRow {
  GameDetailsRow(super.data);

  @override
  SupabaseTable get table => GameDetailsTable();

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  DateTime? get start => getField<DateTime>('start');
  set start(DateTime? value) => setField<DateTime>('start', value);

  DateTime? get end => getField<DateTime>('end');
  set end(DateTime? value) => setField<DateTime>('end', value);

  int get gamesId => getField<int>('games_id')!;
  set gamesId(int value) => setField<int>('games_id', value);
}
