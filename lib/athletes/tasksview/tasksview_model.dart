import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tasksview_widget.dart' show TasksviewWidget;
import 'package:flutter/material.dart';

class TasksviewModel extends FlutterFlowModel<TasksviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Mark as Complete)] action in Button widget.
  ApiCallResponse? apiResult8h1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
