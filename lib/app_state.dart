import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  final _currentUserManager = FutureRequestManager<List<UserProfilesRow>>();
  Future<List<UserProfilesRow>> currentUser({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UserProfilesRow>> Function() requestFn,
  }) =>
      _currentUserManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCurrentUserCache() => _currentUserManager.clear();
  void clearCurrentUserCacheKey(String? uniqueKey) =>
      _currentUserManager.clearRequest(uniqueKey);
}
