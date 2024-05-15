import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userRole = prefs.getString('ff_userRole') ?? _userRole;
    });
    _safeInit(() {
      _teamID = prefs.getString('ff_teamID') ?? _teamID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userRole = '';
  String get userRole => _userRole;
  set userRole(String value) {
    _userRole = value;
    prefs.setString('ff_userRole', value);
  }

  String _teamID = '';
  String get teamID => _teamID;
  set teamID(String value) {
    _teamID = value;
    prefs.setString('ff_teamID', value);
  }

  final _sportListManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> sportList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _sportListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSportListCache() => _sportListManager.clear();
  void clearSportListCacheKey(String? uniqueKey) =>
      _sportListManager.clearRequest(uniqueKey);

  final _teamListManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> teamList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _teamListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTeamListCache() => _teamListManager.clear();
  void clearTeamListCacheKey(String? uniqueKey) =>
      _teamListManager.clearRequest(uniqueKey);

  final _statsListManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> statsList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _statsListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearStatsListCache() => _statsListManager.clear();
  void clearStatsListCacheKey(String? uniqueKey) =>
      _statsListManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
