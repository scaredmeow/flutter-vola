import '../database.dart';

class TrainingTasksTable extends SupabaseTable<TrainingTasksRow> {
  @override
  String get tableName => 'training_tasks';

  @override
  TrainingTasksRow createRow(Map<String, dynamic> data) =>
      TrainingTasksRow(data);
}

class TrainingTasksRow extends SupabaseDataRow {
  TrainingTasksRow(super.data);

  @override
  SupabaseTable get table => TrainingTasksTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get taskDescription => getField<String>('task_description');
  set taskDescription(String? value) =>
      setField<String>('task_description', value);

  DateTime? get taskDate => getField<DateTime>('task_date');
  set taskDate(DateTime? value) => setField<DateTime>('task_date', value);
}
