import '../database.dart';

class TrainingTasksProgressTable
    extends SupabaseTable<TrainingTasksProgressRow> {
  @override
  String get tableName => 'training_tasks_progress';

  @override
  TrainingTasksProgressRow createRow(Map<String, dynamic> data) =>
      TrainingTasksProgressRow(data);
}

class TrainingTasksProgressRow extends SupabaseDataRow {
  TrainingTasksProgressRow(super.data);

  @override
  SupabaseTable get table => TrainingTasksProgressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get taskStatus => getField<bool>('task_status');
  set taskStatus(bool? value) => setField<bool>('task_status', value);

  int? get teamId => getField<int>('team_id');
  set teamId(int? value) => setField<int>('team_id', value);

  int? get teamMemberId => getField<int>('team_member_id');
  set teamMemberId(int? value) => setField<int>('team_member_id', value);
}
