import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_new_post_widget.dart' show CreateNewPostWidget;
import 'package:flutter/material.dart';

class CreateNewPostModel extends FlutterFlowModel<CreateNewPostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for postTitle widget.
  FocusNode? postTitleFocusNode;
  TextEditingController? postTitleTextController;
  String? Function(BuildContext, String?)? postTitleTextControllerValidator;
  // State field(s) for postContent widget.
  FocusNode? postContentFocusNode;
  TextEditingController? postContentTextController;
  String? Function(BuildContext, String?)? postContentTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (Create New Post)] action in Button widget.
  ApiCallResponse? apiResult8r7;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    postTitleFocusNode?.dispose();
    postTitleTextController?.dispose();

    postContentFocusNode?.dispose();
    postContentTextController?.dispose();
  }
}
