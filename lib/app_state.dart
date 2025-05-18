import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _UserId = prefs.getInt('ff_UserId') ?? _UserId;
    });
    _safeInit(() {
      _amount = prefs.getDouble('ff_amount') ?? _amount;
    });
    _safeInit(() {
      _shopName = prefs.getString('ff_shopName') ?? _shopName;
    });
    _safeInit(() {
      _paymentDate = prefs.getString('ff_paymentDate') ?? _paymentDate;
    });
    _safeInit(() {
      _paymentTime = prefs.getString('ff_paymentTime') ?? _paymentTime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _UserId = 0;
  int get UserId => _UserId;
  set UserId(int value) {
    _UserId = value;
    prefs.setInt('ff_UserId', value);
  }

  double _amount = 0.0;
  double get amount => _amount;
  set amount(double value) {
    _amount = value;
    prefs.setDouble('ff_amount', value);
  }

  String _shopName = '';
  String get shopName => _shopName;
  set shopName(String value) {
    _shopName = value;
    prefs.setString('ff_shopName', value);
  }

  String _paymentDate = '';
  String get paymentDate => _paymentDate;
  set paymentDate(String value) {
    _paymentDate = value;
    prefs.setString('ff_paymentDate', value);
  }

  String _paymentTime = '';
  String get paymentTime => _paymentTime;
  set paymentTime(String value) {
    _paymentTime = value;
    prefs.setString('ff_paymentTime', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
