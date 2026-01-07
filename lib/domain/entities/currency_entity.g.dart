// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Currency _$CurrencyFromJson(Map<String, dynamic> json) => _Currency(
  baseCode: json['baseCode'] as String,
  conversionRates: (json['conversionRates'] as List<dynamic>)
      .map((e) => Rates.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CurrencyToJson(_Currency instance) => <String, dynamic>{
  'baseCode': instance.baseCode,
  'conversionRates': instance.conversionRates,
};

_Rates _$RatesFromJson(Map<String, dynamic> json) => _Rates(
  code: json['code'] as String,
  rate: (json['rate'] as num).toDouble(),
);

Map<String, dynamic> _$RatesToJson(_Rates instance) => <String, dynamic>{
  'code': instance.code,
  'rate': instance.rate,
};
