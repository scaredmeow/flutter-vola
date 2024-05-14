import '/flutter_flow/flutter_flow_util.dart';
import 'team_page_widget.dart' show TeamPageWidget;
import 'package:flutter/material.dart';

class TeamPageModel extends FlutterFlowModel<TeamPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
