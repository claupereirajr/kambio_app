import 'package:flutter/material.dart';
import 'package:kambio_app/data/repositories/currency/currency_repository.dart';
import 'package:kambio_app/domain/entities/currency_entity.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class CurrencyViewModel extends ChangeNotifier {
  final CurrencyRepository _currencyRepository;

  CurrencyViewModel(this._currencyRepository);

  late final getCurrencyCommand = Command1(_getCurrency);

  String _fromCurrency = 'USD';
  String get fromCurrency => _fromCurrency;

  String _toCurrency = 'BRL';
  String get toCurrency => _toCurrency;

  double _amount = 1.0;
  double get amount => _amount;

  Currency? _currentData;

  AsyncResult<Currency> _getCurrency(String currency) async {
    final result = await _currencyRepository.getCurrency(currency);
    return result.map((data) {
      _currentData = data;
      _fromCurrency = currency;
      notifyListeners();
      return data;
    });
  }

  void setFromCurrency(String currency) {
    _fromCurrency = currency;
    getCurrencyCommand.execute(currency);
  }

  void setToCurrency(String currency) {
    _toCurrency = currency;
    notifyListeners();
  }

  void setAmount(double value) {
    _amount = value;
    notifyListeners();
  }

  void swapCurrencies() {
    final temp = _fromCurrency;
    _fromCurrency = _toCurrency;
    _toCurrency = temp;
    getCurrencyCommand.execute(_fromCurrency);
  }

  double get convertedAmount {
    if (_currentData == null) return 0.0;
    final rate = _currentData!.conversionRates
        .firstWhere(
          (r) => r.code == _toCurrency,
          orElse: () => const Rates(code: '', rate: 0.0),
        )
        .rate;
    return _amount * rate;
  }

  double get currentRate {
    if (_currentData == null) return 0.0;
    return _currentData!.conversionRates
        .firstWhere(
          (r) => r.code == _toCurrency,
          orElse: () => const Rates(code: '', rate: 0.0),
        )
        .rate;
  }
}
