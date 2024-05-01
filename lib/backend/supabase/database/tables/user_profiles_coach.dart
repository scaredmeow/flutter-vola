import '../database.dart';

class UserProfilesCoachTable extends SupabaseTable<UserProfilesCoachRow> {
  @override
  String get tableName => 'user_profiles_coach';

  @override
  UserProfilesCoachRow createRow(Map<String, dynamic> data) =>
      UserProfilesCoachRow(data);
}

class UserProfilesCoachRow extends SupabaseDataRow {
  UserProfilesCoachRow(super.data);

  @override
  SupabaseTable get table => UserProfilesCoachTable();

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get team => getField<int>('team');
  set team(int? value) => setField<int>('team', value);

  int? get league => getField<int>('league');
  set league(int? value) => setField<int>('league', value);

  int? get organization => getField<int>('organization');
  set organization(int? value) => setField<int>('organization', value);
}
