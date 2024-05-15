import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_a_schedule_widget.dart' show CreateAScheduleWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateAScheduleModel extends FlutterFlowModel<CreateAScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for gameTitle widget.
  FocusNode? gameTitleFocusNode;
  TextEditingController? gameTitleTextController;
  String? Function(BuildContext, String?)? gameTitleTextControllerValidator;
  // State field(s) for openent widget.
  FocusNode? openentFocusNode;
  TextEditingController? openentTextController;
  String? Function(BuildContext, String?)? openentTextControllerValidator;
  // State field(s) for gameDate widget.
  FocusNode? gameDateFocusNode;
  TextEditingController? gameDateTextController;
  final gameDateMask = MaskTextInputFormatter(mask: '####-##-##');
  String? Function(BuildContext, String?)? gameDateTextControllerValidator;
  // State field(s) for Location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // Stores action output result for [Backend Call - API (Create a new schedule)] action in Button widget.
  ApiCallResponse? apiResult2s7;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    gameTitleFocusNode?.dispose();
    gameTitleTextController?.dispose();

    openentFocusNode?.dispose();
    openentTextController?.dispose();

    gameDateFocusNode?.dispose();
    gameDateTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
