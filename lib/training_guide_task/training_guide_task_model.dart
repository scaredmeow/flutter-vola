import '/flutter_flow/flutter_flow_util.dart';
import 'training_guide_task_widget.dart' show TrainingGuideTaskWidget;
import 'package:flutter/material.dart';

class TrainingGuideTaskModel extends FlutterFlowModel<TrainingGuideTaskWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
