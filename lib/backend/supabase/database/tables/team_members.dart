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

  bool? get isOwner => getField<bool>('is_owner');
  set isOwner(bool? value) => setField<bool>('is_owner', value);

  bool? get pending => getField<bool>('pending');
  set pending(bool? value) => setField<bool>('pending', value);
}
