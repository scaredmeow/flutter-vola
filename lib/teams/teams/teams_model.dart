import '/components/unauthorizedacc_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'teams_widget.dart' show TeamsWidget;
import 'package:flutter/material.dart';

class TeamsModel extends FlutterFlowModel<TeamsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for teamName widget.
  FocusNode? teamNameFocusNode;
  TextEditingController? teamNameTextController;
  String? Function(BuildContext, String?)? teamNameTextControllerValidator;
  // Model for unauthorizedacc component.
  late UnauthorizedaccModel unauthorizedaccModel;

  @override
  void initState(BuildContext context) {
    unauthorizedaccModel = createModel(context, () => UnauthorizedaccModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    teamNameFocusNode?.dispose();
    teamNameTextController?.dispose();

    unauthorizedaccModel.dispose();
  }
}
