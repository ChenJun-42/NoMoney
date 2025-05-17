import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? userName = '',
    String? email = '',
    String? phone = '',
    String? password = '',
    double? income,
    double? target,
    double? budget,
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(userName)}",
  "email": "${escapeStringForJson(email)}",
  "phone": "${escapeStringForJson(phone)}",
  "password": "${escapeStringForJson(password)}",
  "income": ${income},
  "target": ${target},
  "budget": ${budget}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl: 'http://47.250.93.90:3000/api/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
    "email": "${escapeStringForJson(email)}",
    "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: 'http://47.250.93.90:3000/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.user_id''',
      ));
}

class ForgetPasswordCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? phoneNumber = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "phone_number": "${escapeStringForJson(phoneNumber)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forget password',
      apiUrl: 'http://47.250.93.90:3000/api/forget_password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? newPassword = '',
    int? otp,
  }) async {
    final ffApiRequestBody = '''
{
  "otp": ${otp},
  "new_password": "${escapeStringForJson(newPassword)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'reset password',
      apiUrl: 'http://47.250.93.90:3000/api/reset_password/${otp}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeInformationCall {
  static Future<ApiCallResponse> call({
    String? password = '\'\'',
    String? language = '\'\'',
    String? currency = '\'\'',
    String? displayColor = '\'\'',
    double? income = 0,
    double? monthlySavingTarget = 0,
    int? userId = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "password": "${escapeStringForJson(password)}",
  "language": "${escapeStringForJson(language)}",
  "currency": "${escapeStringForJson(currency)}",
  "display_color": "${escapeStringForJson(displayColor)}",
  "income": ${income},
  "monthly_saving_target": ${monthlySavingTarget}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change information',
      apiUrl: 'http://47.250.93.90:3000/api/user/${userId}/change_information',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserDetailsCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'user details',
      apiUrl: 'http://47.250.93.90:3000/api/user/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  static int? totalBalance(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_balance''',
      ));
  static int? totalIncome(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_income_this_month''',
      ));
  static int? totalOutcome(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_outcome_this_month''',
      ));
  static int? todaySpend(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.today_spend''',
      ));
  static int? monthlySavingGoal(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.monthly_saving_goal''',
      ));
  static int? targetSaving(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.target_saving''',
      ));
  static int? outstandingBalance(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.outstanding_balance''',
      ));
  static int? budgetOverviewAmount(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.budget_overview.amount''',
      ));
  static int? financialHealthScore(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.financial_health_score''',
      ));
  static String? budgetOverviewPeriod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.budget_overview.period''',
      ));
}

class ChatbotCall {
  static Future<ApiCallResponse> call({
    String? question = '',
  }) async {
    final ffApiRequestBody = '''
{
  "question": "${escapeStringForJson(question)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chatbot',
      apiUrl: 'http://47.250.93.90:3000/api/chatbot',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OcrCall {
  static Future<ApiCallResponse> call({
    String? imgUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "image_url": "${escapeStringForJson(imgUrl)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OCR',
      apiUrl: 'http://47.250.93.90:3000/api/receipt/extract',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaveReceiptCall {
  static Future<ApiCallResponse> call({
    String? shopName = '',
    double? value,
    String? catagory = '',
    String? paymentMethod = '',
    String? paymentDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "shop_name": "${escapeStringForJson(shopName)}",
  "value": ${value},
  "category": "${escapeStringForJson(catagory)}",
  "payment_method": "${escapeStringForJson(paymentMethod)}",
  "payment_date": "${escapeStringForJson(paymentDate)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'save receipt',
      apiUrl: 'http://47.250.93.90:3000/api/receipt/save',
      callType: ApiCallType.POST,
      headers: {
        '\tContent-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
