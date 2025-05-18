import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'bookkeeping_income_widget.dart' show BookkeepingIncomeWidget;
import 'package:flutter/material.dart';

class BookkeepingIncomeModel extends FlutterFlowModel<BookkeepingIncomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for Time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (save transaction)] action in Button widget.
  ApiCallResponse? apiResultwe4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    dateFocusNode?.dispose();
    dateTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController4?.dispose();
  }
}
