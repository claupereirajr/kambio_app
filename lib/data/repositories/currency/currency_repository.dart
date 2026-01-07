import 'package:kambio_app/domain/entities/currency_entity.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class CurrencyRepository {
  AsyncResult<Currency> getCurrency(String currency);

  void dispose();
}
