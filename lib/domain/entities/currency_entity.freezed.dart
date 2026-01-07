// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Currency {

 String get baseCode; List<Rates> get conversionRates;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.baseCode, baseCode) || other.baseCode == baseCode)&&const DeepCollectionEquality().equals(other.conversionRates, conversionRates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseCode,const DeepCollectionEquality().hash(conversionRates));

@override
String toString() {
  return 'Currency(baseCode: $baseCode, conversionRates: $conversionRates)';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
 String baseCode, List<Rates> conversionRates
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseCode = null,Object? conversionRates = null,}) {
  return _then(_self.copyWith(
baseCode: null == baseCode ? _self.baseCode : baseCode // ignore: cast_nullable_to_non_nullable
as String,conversionRates: null == conversionRates ? _self.conversionRates : conversionRates // ignore: cast_nullable_to_non_nullable
as List<Rates>,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseCode,  List<Rates> conversionRates)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.baseCode,_that.conversionRates);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseCode,  List<Rates> conversionRates)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.baseCode,_that.conversionRates);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseCode,  List<Rates> conversionRates)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.baseCode,_that.conversionRates);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Currency implements Currency {
  const _Currency({required this.baseCode, required final  List<Rates> conversionRates}): _conversionRates = conversionRates;
  factory _Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

@override final  String baseCode;
 final  List<Rates> _conversionRates;
@override List<Rates> get conversionRates {
  if (_conversionRates is EqualUnmodifiableListView) return _conversionRates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_conversionRates);
}


/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.baseCode, baseCode) || other.baseCode == baseCode)&&const DeepCollectionEquality().equals(other._conversionRates, _conversionRates));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseCode,const DeepCollectionEquality().hash(_conversionRates));

@override
String toString() {
  return 'Currency(baseCode: $baseCode, conversionRates: $conversionRates)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
 String baseCode, List<Rates> conversionRates
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseCode = null,Object? conversionRates = null,}) {
  return _then(_Currency(
baseCode: null == baseCode ? _self.baseCode : baseCode // ignore: cast_nullable_to_non_nullable
as String,conversionRates: null == conversionRates ? _self._conversionRates : conversionRates // ignore: cast_nullable_to_non_nullable
as List<Rates>,
  ));
}


}


/// @nodoc
mixin _$Rates {

 String get code; double get rate;
/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RatesCopyWith<Rates> get copyWith => _$RatesCopyWithImpl<Rates>(this as Rates, _$identity);

  /// Serializes this Rates to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Rates&&(identical(other.code, code) || other.code == code)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,rate);

@override
String toString() {
  return 'Rates(code: $code, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $RatesCopyWith<$Res>  {
  factory $RatesCopyWith(Rates value, $Res Function(Rates) _then) = _$RatesCopyWithImpl;
@useResult
$Res call({
 String code, double rate
});




}
/// @nodoc
class _$RatesCopyWithImpl<$Res>
    implements $RatesCopyWith<$Res> {
  _$RatesCopyWithImpl(this._self, this._then);

  final Rates _self;
  final $Res Function(Rates) _then;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? rate = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Rates].
extension RatesPatterns on Rates {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Rates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Rates() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Rates value)  $default,){
final _that = this;
switch (_that) {
case _Rates():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Rates value)?  $default,){
final _that = this;
switch (_that) {
case _Rates() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  double rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Rates() when $default != null:
return $default(_that.code,_that.rate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  double rate)  $default,) {final _that = this;
switch (_that) {
case _Rates():
return $default(_that.code,_that.rate);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  double rate)?  $default,) {final _that = this;
switch (_that) {
case _Rates() when $default != null:
return $default(_that.code,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Rates implements Rates {
  const _Rates({required this.code, required this.rate});
  factory _Rates.fromJson(Map<String, dynamic> json) => _$RatesFromJson(json);

@override final  String code;
@override final  double rate;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RatesCopyWith<_Rates> get copyWith => __$RatesCopyWithImpl<_Rates>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RatesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Rates&&(identical(other.code, code) || other.code == code)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,rate);

@override
String toString() {
  return 'Rates(code: $code, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$RatesCopyWith<$Res> implements $RatesCopyWith<$Res> {
  factory _$RatesCopyWith(_Rates value, $Res Function(_Rates) _then) = __$RatesCopyWithImpl;
@override @useResult
$Res call({
 String code, double rate
});




}
/// @nodoc
class __$RatesCopyWithImpl<$Res>
    implements _$RatesCopyWith<$Res> {
  __$RatesCopyWithImpl(this._self, this._then);

  final _Rates _self;
  final $Res Function(_Rates) _then;

/// Create a copy of Rates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? rate = null,}) {
  return _then(_Rates(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
