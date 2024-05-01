// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaginatedPostStruct extends BaseStruct {
  PaginatedPostStruct({
    List<DataStruct>? data,
    PaginationStruct? pagination,
  })  : _data = data,
        _pagination = pagination;

  // "data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;
  void updateData(Function(List<DataStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  // "pagination" field.
  PaginationStruct? _pagination;
  PaginationStruct get pagination => _pagination ?? PaginationStruct();
  set pagination(PaginationStruct? val) => _pagination = val;
  void updatePagination(Function(PaginationStruct) updateFn) =>
      updateFn(_pagination ??= PaginationStruct());
  bool hasPagination() => _pagination != null;

  static PaginatedPostStruct fromMap(Map<String, dynamic> data) =>
      PaginatedPostStruct(
        data: getStructList(
          data['data'],
          DataStruct.fromMap,
        ),
        pagination: PaginationStruct.maybeFromMap(data['pagination']),
      );

  static PaginatedPostStruct? maybeFromMap(dynamic data) => data is Map
      ? PaginatedPostStruct.fromMap(data.cast<String, dynamic>())
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

  static PaginatedPostStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaginatedPostStruct(
        data: deserializeStructParam<DataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
        ),
        pagination: deserializeStructParam(
          data['pagination'],
          ParamType.DataStruct,
          false,
          structBuilder: PaginationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PaginatedPostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PaginatedPostStruct &&
        listEquality.equals(data, other.data) &&
        pagination == other.pagination;
  }

  @override
  int get hashCode => const ListEquality().hash([data, pagination]);
}

PaginatedPostStruct createPaginatedPostStruct({
  PaginationStruct? pagination,
}) =>
    PaginatedPostStruct(
      pagination: pagination ?? PaginationStruct(),
    );
