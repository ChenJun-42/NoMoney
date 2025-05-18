import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'bookkeeping_expanse_widget.dart' show BookkeepingExpanseWidget;
import 'package:flutter/material.dart';

class BookkeepingExpanseModel
    extends FlutterFlowModel<BookkeepingExpanseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for Date widget.
  FocusNode? dateFocusNode;
  TextEditingController? dateTextController;
  String? Function(BuildContext, String?)? dateTextControllerValidator;
  // State field(s) for Time widget.
  FocusNode? timeFocusNode;
  TextEditingController? timeTextController;
  String? Function(BuildContext, String?)? timeTextControllerValidator;
  // State field(s) for Method widget.
  String? methodValue;
  FormFieldController<String>? methodValueController;
  // State field(s) for ShopName widget.
  FocusNode? shopNameFocusNode;
  TextEditingController? shopNameTextController;
  String? Function(BuildContext, String?)? shopNameTextControllerValidator;
  // State field(s) for Note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (OCR)] action in Container widget.
  ApiCallResponse? apiResulthv6;
  // Stores action output result for [Backend Call - API (save transaction)] action in Button widget.
  ApiCallResponse? apiResult0mh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode?.dispose();
    amountTextController?.dispose();

    dateFocusNode?.dispose();
    dateTextController?.dispose();

    timeFocusNode?.dispose();
    timeTextController?.dispose();

    shopNameFocusNode?.dispose();
    shopNameTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
