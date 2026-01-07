import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_entity.freezed.dart';
part 'currency_entity.g.dart';

@freezed
sealed class Currency with _$Currency {
  const factory Currency({
    required String baseCode,
    required List<Rates> conversionRates,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
sealed class Rates with _$Rates {
  const factory Rates({required String code, required double rate}) = _Rates;

  factory Rates.fromJson(Map<String, dynamic> json) => _$RatesFromJson(json);
}
