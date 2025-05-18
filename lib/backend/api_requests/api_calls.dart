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
    double? balance,
  }) async {
    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(userName)}",
  "email": "${escapeStringForJson(email)}",
  "phone": "${escapeStringForJson(phone)}",
  "password": "${escapeStringForJson(password)}",
  "income": ${income},
  "target": ${target},
  "budget": ${budget},
  "balance": ${balance}
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
      apiUrl: 'https://nomoneyalibaba.duckdns.org/api/login',
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
      apiUrl: 'https://nomoneyalibaba.duckdns.org/api/forget_password',
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
      apiUrl: 'https://nomoneyalibaba.duckdns.org/api/reset_password/${otp}',
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
  "display_color": "\${switchValue ? 'dark' : 'light'}",
  "income": ${income},
  "monthly_saving_target": ${monthlySavingTarget}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change information',
      apiUrl:
          'https://nomoneyalibaba.duckdns.org/api/setting/user/${userId}/change_information',
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
      apiUrl: 'https://nomoneyalibaba.duckdns.org/api/user/${id}',
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
  static List<int>? budgetAmount(dynamic response) => (getJsonField(
        response,
        r'''$.budget_overview[:].amount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ChatbotCall {
  static Future<ApiCallResponse> call({
    String? question = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "question": "${escapeStringForJson(question)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chatbot',
      apiUrl:
          'https://nomoneyalibaba.duckdns.org/api/chatbot/user/${userId}/message',
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
      apiUrl: 'https://nomoneyalibaba.duckdns.org/api/receipt/extract',
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

  static double? value(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data[:].value''',
      ));
  static String? paymentMethod(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].payment_method''',
      ));
  static String? paymentDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].payment_date''',
      ));
  static dynamic shopName(dynamic response) => getJsonField(
        response,
        r'''$.data[:].shop_name''',
      );
  static String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].category''',
      ));
  static String? paymentTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].payment_time''',
      ));
}

class SaveTransactionCall {
  static Future<ApiCallResponse> call({
    String? shopName = '',
    double? value,
    String? catagory = '',
    String? paymentMethod = '',
    String? paymentDate = '',
    int? userId,
    String? note = '',
    String? paymentTime = '',
    String? transactionCategory = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${userId}",
  "shop_name": "${escapeStringForJson(shopName)}",
  "value": "${value}",
  "category": "${escapeStringForJson(catagory)}",
  "payment_method": "${escapeStringForJson(paymentMethod)}",
  "payment_date": "${escapeStringForJson(paymentDate)}",
  "payment_time": "${escapeStringForJson(paymentTime)}",
  "note": "${escapeStringForJson(note)}",
  "transaction_category": "${escapeStringForJson(transactionCategory)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'save transaction',
      apiUrl: 'https://nomoneyalibaba.duckdns.org/api/receipt/${userId}/save',
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

class SetBudgetCall {
  static Future<ApiCallResponse> call({
    int? amount,
    String? period = '',
    int? userId,
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "${userId}",
  "amount": "${amount}",
  "period": "${escapeStringForJson(period)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Set Budget',
      apiUrl:
          'https://nomoneyalibaba.duckdns.org/api/set_budget/user/${userId}',
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
