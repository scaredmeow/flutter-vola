import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'team_page_widget.dart' show TeamPageWidget;
import 'package:flutter/material.dart';

class TeamPageModel extends FlutterFlowModel<TeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Leave a Team)] action in Button widget.
  ApiCallResponse? apiResultzqg;
  // Stores action output result for [Backend Call - API (Join a Team)] action in Button widget.
  ApiCallResponse? apiResultzqgCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
