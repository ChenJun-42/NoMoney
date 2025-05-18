import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personalization_three_widget.dart' show PersonalizationThreeWidget;
import 'package:flutter/material.dart';

class PersonalizationThreeModel
    extends FlutterFlowModel<PersonalizationThreeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (change information)] action in Switch widget.
  ApiCallResponse? apiResultq5a;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
