import '/backend/api_requests/api_calls.dart';
import '/components/dashboard_summary_widget.dart';
import '/components/unauthorizedacc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'team_dashboard_widget.dart' show TeamDashboardWidget;
import 'package:flutter/material.dart';

class TeamDashboardModel extends FlutterFlowModel<TeamDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for DashboardSummary component.
  late DashboardSummaryModel dashboardSummaryModel;
  Completer<ApiCallResponse>? apiRequestCompleter3;
  Completer<ApiCallResponse>? apiRequestCompleter1;
  // Stores action output result for [Backend Call - API (Accept a Player )] action in Button widget.
  ApiCallResponse? apiResultm1k;
  // Stores action output result for [Backend Call - API (Reject a Player)] action in Button widget.
  ApiCallResponse? apiResultpsr;
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - API (Leave a Team)] action in Button widget.
  ApiCallResponse? apiResulttit;
  // Model for unauthorizedacc component.
  late UnauthorizedaccModel unauthorizedaccModel;

  @override
  void initState(BuildContext context) {
    dashboardSummaryModel = createModel(context, () => DashboardSummaryModel());
    unauthorizedaccModel = createModel(context, () => UnauthorizedaccModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dashboardSummaryModel.dispose();
    unauthorizedaccModel.dispose();
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
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
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
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
