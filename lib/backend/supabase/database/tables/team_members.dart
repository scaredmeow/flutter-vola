import '../database.dart';

class TeamMembersTable extends SupabaseTable<TeamMembersRow> {
  @override
  String get tableName => 'team_members';

  @override
  TeamMembersRow createRow(Map<String, dynamic> data) => TeamMembersRow(data);
}

class TeamMembersRow extends SupabaseDataRow {
  TeamMembersRow(super.data);

  @override
  SupabaseTable get table => TeamMembersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  int? get leagueId => getField<int>('league_id');
  set leagueId(int? value) => setField<int>('league_id', value);

  int? get organizationId => getField<int>('organization_id');
  set organizationId(int? value) => setField<int>('organization_id', value);
}
