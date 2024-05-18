import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'new_task_widget.dart' show NewTaskWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NewTaskModel extends FlutterFlowModel<NewTaskWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for duedate widget.
  FocusNode? duedateFocusNode;
  TextEditingController? duedateTextController;
  final duedateMask = MaskTextInputFormatter(mask: '####-##-##');
  String? Function(BuildContext, String?)? duedateTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Create Tasks)] action in Button widget.
  ApiCallResponse? apiResultano;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    duedateFocusNode?.dispose();
    duedateTextController?.dispose();
  }
}
