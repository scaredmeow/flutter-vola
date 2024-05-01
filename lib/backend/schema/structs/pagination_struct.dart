// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaginationStruct extends BaseStruct {
  PaginationStruct({
    int? count,
    int? limit,
    int? offset,
    int? total,
  })  : _count = count,
        _limit = limit,
        _offset = offset,
        _total = total;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;
  void incrementCount(int amount) => _count = count + amount;
  bool hasCount() => _count != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  set limit(int? val) => _limit = val;
  void incrementLimit(int amount) => _limit = limit + amount;
  bool hasLimit() => _limit != null;

  // "offset" field.
  int? _offset;
  int get offset => _offset ?? 0;
  set offset(int? val) => _offset = val;
  void incrementOffset(int amount) => _offset = offset + amount;
  bool hasOffset() => _offset != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  set total(int? val) => _total = val;
  void incrementTotal(int amount) => _total = total + amount;
  bool hasTotal() => _total != null;

  static PaginationStruct fromMap(Map<String, dynamic> data) =>
      PaginationStruct(
        count: castToType<int>(data['count']),
        limit: castToType<int>(data['limit']),
        offset: castToType<int>(data['offset']),
        total: castToType<int>(data['total']),
      );

  static PaginationStruct? maybeFromMap(dynamic data) => data is Map
      ? PaginationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'limit': _limit,
        'offset': _offset,
        'total': _total,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.int,
        ),
        'offset': serializeParam(
          _offset,
          ParamType.int,
        ),
        'total': serializeParam(
          _total,
          ParamType.int,
        ),
      }.withoutNulls;

  static PaginationStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaginationStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.int,
          false,
        ),
        offset: deserializeParam(
          data['offset'],
          ParamType.int,
          false,
        ),
        total: deserializeParam(
          data['total'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PaginationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaginationStruct &&
        count == other.count &&
        limit == other.limit &&
        offset == other.offset &&
        total == other.total;
  }

  @override
  int get hashCode => const ListEquality().hash([count, limit, offset, total]);
}

PaginationStruct createPaginationStruct({
  int? count,
  int? limit,
  int? offset,
  int? total,
}) =>
    PaginationStruct(
      count: count,
      limit: limit,
      offset: offset,
      total: total,
    );
