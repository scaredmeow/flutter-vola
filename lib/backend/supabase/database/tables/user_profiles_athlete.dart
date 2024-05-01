import '../database.dart';

class UserProfilesAthleteTable extends SupabaseTable<UserProfilesAthleteRow> {
  @override
  String get tableName => 'user_profiles_athlete';

  @override
  UserProfilesAthleteRow createRow(Map<String, dynamic> data) =>
      UserProfilesAthleteRow(data);
}

class UserProfilesAthleteRow extends SupabaseDataRow {
  UserProfilesAthleteRow(super.data);

  @override
  SupabaseTable get table => UserProfilesAthleteTable();

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get civilStatus => getField<String>('civil_status');
  set civilStatus(String? value) => setField<String>('civil_status', value);
}
