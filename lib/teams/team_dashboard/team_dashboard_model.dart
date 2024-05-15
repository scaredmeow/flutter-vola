import '/backend/api_requests/api_calls.dart';
import '/components/dashboard_summary_widget.dart';
import '/components/unauthorizedacc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dart:async';
import 'team_dashboard_widget.dart' show TeamDashboardWidget;
import 'package:flutter/material.dart';

class TeamDashboardModel extends FlutterFlowModel<TeamDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DashboardSummary component.
  late DashboardSummaryModel dashboardSummaryModel;
  Completer<ApiCallResponse>? apiRequestCompleter3;
  bool apiRequestCompleted1 = false;
  String? apiRequestLastUniqueKey1;
  // Stores action output result for [Backend Call - API (Accept a Player )] action in Button widget.
  ApiCallResponse? apiResultm1k;
  // Stores action output result for [Backend Call - API (Reject a Player)] action in Button widget.
  ApiCallResponse? apiResultpsr;
  bool apiRequestCompleted2 = false;
  String? apiRequestLastUniqueKey2;
  // Stores action output result for [Backend Call - API (Leave a Team)] action in Button widget.
  ApiCallResponse? apiResulttit;
  // Model for unauthorizedacc component.
  late UnauthorizedaccModel unauthorizedaccModel1;
  // Model for unauthorizedacc component.
  late UnauthorizedaccModel unauthorizedaccModel2;

  /// Query cache managers for this widget.

  final _memberRequestManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> memberRequest({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _memberRequestManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearMemberRequestCache() => _memberRequestManager.clear();
  void clearMemberRequestCacheKey(String? uniqueKey) =>
      _memberRequestManager.clearRequest(uniqueKey);

  final _currentMemberManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> currentMember({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _currentMemberManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCurrentMemberCache() => _currentMemberManager.clear();
  void clearCurrentMemberCacheKey(String? uniqueKey) =>
      _currentMemberManager.clearRequest(uniqueKey);

  final _taskTrainingManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> taskTraining({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _taskTrainingManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTaskTrainingCache() => _taskTrainingManager.clear();
  void clearTaskTrainingCacheKey(String? uniqueKey) =>
      _taskTrainingManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    dashboardSummaryModel = createModel(context, () => DashboardSummaryModel());
    unauthorizedaccModel1 = createModel(context, () => UnauthorizedaccModel());
    unauthorizedaccModel2 = createModel(context, () => UnauthorizedaccModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dashboardSummaryModel.dispose();
    unauthorizedaccModel1.dispose();
    unauthorizedaccModel2.dispose();

    /// Dispose query cache managers for this widget.

    clearMemberRequestCache();

    clearCurrentMemberCache();

    clearTaskTrainingCache();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted1;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted2;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
