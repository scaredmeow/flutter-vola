import '../database.dart';

class UserProfilesTable extends SupabaseTable<UserProfilesRow> {
  @override
  String get tableName => 'user_profiles';

  @override
  UserProfilesRow createRow(Map<String, dynamic> data) => UserProfilesRow(data);
}

class UserProfilesRow extends SupabaseDataRow {
  UserProfilesRow(super.data);

  @override
  SupabaseTable get table => UserProfilesTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  int? get role => getField<int>('role');
  set role(int? value) => setField<int>('role', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get middleName => getField<String>('middle_name');
  set middleName(String? value) => setField<String>('middle_name', value);

  DateTime? get birthdate => getField<DateTime>('birthdate');
  set birthdate(DateTime? value) => setField<DateTime>('birthdate', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
