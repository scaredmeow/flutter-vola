import '/backend/api_requests/api_calls.dart';
import '/components/unauthorizedacc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'schedule_widget.dart' show ScheduleWidget;
import 'package:flutter/material.dart';

class ScheduleModel extends FlutterFlowModel<ScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for unauthorizedacc component.
  late UnauthorizedaccModel unauthorizedaccModel;

  /// Query cache managers for this widget.

  final _schedulesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> schedules({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _schedulesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSchedulesCache() => _schedulesManager.clear();
  void clearSchedulesCacheKey(String? uniqueKey) =>
      _schedulesManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    unauthorizedaccModel = createModel(context, () => UnauthorizedaccModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    unauthorizedaccModel.dispose();

    /// Dispose query cache managers for this widget.

    clearSchedulesCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
