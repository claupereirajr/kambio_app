import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:kambio_app/data/repositories/currency/currency_repository.dart';
import 'package:kambio_app/data/services/currency/currency_api_service.dart';
import 'package:kambio_app/data/services/currency/currency_local_storage.dart';
import 'package:kambio_app/domain/entities/currency_entity.dart';
import 'package:result_dart/result_dart.dart';

class RemoteCurrencyRepository implements CurrencyRepository {
  RemoteCurrencyRepository(
    this._currencyLocalStorage,
    this._currencyApiService,
  );

  final CurrencyLocalStorage _currencyLocalStorage;
  final CurrencyApiService _currencyApiService;
  final _streamController = StreamController<Currency>.broadcast();

  @override
  AsyncResult<Currency> getCurrency(String currency) async {
    final connectivityResult = await Connectivity().checkConnectivity();

    if (connectivityResult.contains(ConnectivityResult.none)) {
      return _currencyLocalStorage.getCurrency(currency);
    }

    return _currencyApiService.getLatestRates(currency).flatMap((
      currency,
    ) async {
      await _currencyLocalStorage.saveCurrency(currency);
      return Success(currency);
    });
  }

  @override
  void dispose() {
    _streamController.close();
  }
}
