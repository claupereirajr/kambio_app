import 'package:kambio_app/data/services/client_http.dart';
import 'package:kambio_app/domain/entities/currency_entity.dart';
import 'package:result_dart/result_dart.dart';

class CurrencyApiService {
  CurrencyApiService(this._clientHttp);

  final ClientHttp _clientHttp;
  final String _baseUrl =
      'https://v6.exchangerate-api.com/v6/12164a7e14857e1f71241efa/latest/';

  AsyncResult<Currency> getLatestRates(String currencyId) async {
    final response = await _clientHttp.get('$_baseUrl$currencyId');

    return response.map((res) {
      final data = res.data as Map<String, dynamic>;

      // Map API response to our Currency Entity
      // API format: { "base_code": "USD", "conversion_rates": { "ARS": 123.4, ... } }
      final baseCode = data['base_code'] as String;
      final ratesMap = data['conversion_rates'] as Map<String, dynamic>;

      final conversionRates = ratesMap.entries.map((entry) {
        return Rates(code: entry.key, rate: (entry.value as num).toDouble());
      }).toList();

      return Currency(baseCode: baseCode, conversionRates: conversionRates);
    });
  }
}
