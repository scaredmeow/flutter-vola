import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_stats_widget.dart' show EditStatsWidget;
import 'package:flutter/material.dart';

class EditStatsModel extends FlutterFlowModel<EditStatsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (Delete Stats)] action in Button widget.
  ApiCallResponse? apiResulttnx;
  // State field(s) for metricName widget.
  FocusNode? metricNameFocusNode;
  TextEditingController? metricNameTextController;
  String? Function(BuildContext, String?)? metricNameTextControllerValidator;
  // State field(s) for metricValue widget.
  FocusNode? metricValueFocusNode;
  TextEditingController? metricValueTextController;
  String? Function(BuildContext, String?)? metricValueTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create New Stats)] action in Button widget.
  ApiCallResponse? apiResultrb5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    metricNameFocusNode?.dispose();
    metricNameTextController?.dispose();

    metricValueFocusNode?.dispose();
    metricValueTextController?.dispose();
  }
}
