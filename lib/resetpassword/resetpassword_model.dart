import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'resetpassword_widget.dart' show ResetpasswordWidget;
import 'package:flutter/material.dart';

class ResetpasswordModel extends FlutterFlowModel<ResetpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Otp widget.
  FocusNode? otpFocusNode;
  TextEditingController? otpTextController;
  String? Function(BuildContext, String?)? otpTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController3Validator;
  // Stores action output result for [Backend Call - API (reset password)] action in Button widget.
  ApiCallResponse? apiResult210;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    otpFocusNode?.dispose();
    otpTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();
  }
}
