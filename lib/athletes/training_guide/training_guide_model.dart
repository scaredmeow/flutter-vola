import '/flutter_flow/flutter_flow_util.dart';
import 'training_guide_widget.dart' show TrainingGuideWidget;
import 'package:flutter/material.dart';

class TrainingGuideModel extends FlutterFlowModel<TrainingGuideWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
