import '/flutter_flow/flutter_flow_util.dart';
import '/profile/profile_component/profile_component_widget.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ProfileComponent component.
  late ProfileComponentModel profileComponentModel;

  @override
  void initState(BuildContext context) {
    profileComponentModel = createModel(context, () => ProfileComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    profileComponentModel.dispose();
  }
}
