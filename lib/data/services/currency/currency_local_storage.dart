import 'dart:convert';

import 'package:kambio_app/data/services/local_storage.dart';
import 'package:kambio_app/domain/entities/currency_entity.dart';
import 'package:result_dart/result_dart.dart';

class CurrencyLocalStorage {
  CurrencyLocalStorage(this._localStorage);

  final LocalStorage _localStorage;

  AsyncResult<Currency> getCurrency(String currency) {
    return _localStorage
        .getData('currency')
        .map((json) => Currency.fromJson(jsonDecode(json)));
  }

  AsyncResult<Unit> saveCurrency(Currency currency) {
    return _localStorage
        .saveData('currency', jsonEncode(currency.toJson()))
        .pure(unit);
  }
}
