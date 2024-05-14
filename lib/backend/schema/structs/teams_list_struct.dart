// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsListStruct extends BaseStruct {
  TeamsListStruct({
    List<DataTeamsStruct>? data,
    PaginationStruct? pagination,
  })  : _data = data,
        _pagination = pagination;

  // "data" field.
  List<DataTeamsStruct>? _data;
  List<DataTeamsStruct> get data => _data ?? const [];
  set data(List<DataTeamsStruct>? val) => _data = val;
  void updateData(Function(List<DataTeamsStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  // "pagination" field.
  PaginationStruct? _pagination;
  PaginationStruct get pagination => _pagination ?? PaginationStruct();
  set pagination(PaginationStruct? val) => _pagination = val;
  void updatePagination(Function(PaginationStruct) updateFn) =>
      updateFn(_pagination ??= PaginationStruct());
  bool hasPagination() => _pagination != null;

  static TeamsListStruct fromMap(Map<String, dynamic> data) => TeamsListStruct(
        data: getStructList(
          data['data'],
          DataTeamsStruct.fromMap,
        ),
        pagination: PaginationStruct.maybeFromMap(data['pagination']),
      );

  static TeamsListStruct? maybeFromMap(dynamic data) => data is Map
      ? TeamsListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
        'pagination': _pagination?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
        'pagination': serializeParam(
          _pagination,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TeamsListStruct fromSerializableMap(Map<String, dynamic> data) =>
      TeamsListStruct(
        data: deserializeStructParam<DataTeamsStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataTeamsStruct.fromSerializableMap,
        ),
        pagination: deserializeStructParam(
          data['pagination'],
          ParamType.DataStruct,
          false,
          structBuilder: PaginationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TeamsListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TeamsListStruct &&
        listEquality.equals(data, other.data) &&
        pagination == other.pagination;
  }

  @override
  int get hashCode => const ListEquality().hash([data, pagination]);
}

TeamsListStruct createTeamsListStruct({
  PaginationStruct? pagination,
}) =>
    TeamsListStruct(
      pagination: pagination ?? PaginationStruct(),
    );
