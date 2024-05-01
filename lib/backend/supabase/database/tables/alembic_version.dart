import '../database.dart';

class AlembicVersionTable extends SupabaseTable<AlembicVersionRow> {
  @override
  String get tableName => 'alembic_version';

  @override
  AlembicVersionRow createRow(Map<String, dynamic> data) =>
      AlembicVersionRow(data);
}

class AlembicVersionRow extends SupabaseDataRow {
  AlembicVersionRow(super.data);

  @override
  SupabaseTable get table => AlembicVersionTable();

  String get versionNum => getField<String>('version_num')!;
  set versionNum(String value) => setField<String>('version_num', value);
}
