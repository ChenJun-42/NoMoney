import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'welcome_widget.dart' show WelcomeWidget;
import 'package:flutter/material.dart';

class WelcomeModel extends FlutterFlowModel<WelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Income widget.
  double? incomeValue;
  // State field(s) for Target widget.
  double? targetValue;
  // State field(s) for Budget widget.
  double? budgetValue;
  // Stores action output result for [Backend Call - API (register)] action in Button widget.
  ApiCallResponse? apiResultgef;
  // Stores action output result for [Backend Call - API (register)] action in Button widget.
  ApiCallResponse? apiResultgetfull;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
