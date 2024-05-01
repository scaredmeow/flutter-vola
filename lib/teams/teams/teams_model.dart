import '/flutter_flow/flutter_flow_util.dart';
import 'teams_widget.dart' show TeamsWidget;
import 'package:flutter/material.dart';

class TeamsModel extends FlutterFlowModel<TeamsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
