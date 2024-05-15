import '/components/unauthorizedacc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'teams_widget.dart' show TeamsWidget;
import 'package:flutter/material.dart';

class TeamsModel extends FlutterFlowModel<TeamsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for unauthorizedacc component.
  late UnauthorizedaccModel unauthorizedaccModel;

  @override
  void initState(BuildContext context) {
    unauthorizedaccModel = createModel(context, () => UnauthorizedaccModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    unauthorizedaccModel.dispose();
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
