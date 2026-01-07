import 'package:auto_injector/auto_injector.dart';
import 'package:dio/dio.dart';
import 'package:kambio_app/data/repositories/currency/currency_repository.dart';
import 'package:kambio_app/data/repositories/currency/remote_currency_repository.dart';
import 'package:kambio_app/data/services/client_http.dart';
import 'package:kambio_app/data/services/currency/currency_api_service.dart';
import 'package:kambio_app/data/services/currency/currency_local_storage.dart';
import 'package:kambio_app/data/services/local_storage.dart';
import 'package:kambio_app/ui/currency/view_models/currency_view_model.dart';

final injector = AutoInjector();

void setupDependencies() {
  injector.addInstance<Dio>(
    Dio(BaseOptions(connectTimeout: const Duration(seconds: 5))),
  );
  injector.addSingleton<CurrencyRepository>(RemoteCurrencyRepository.new);
  injector.addSingleton(ClientHttp.new);
  injector.addSingleton(LocalStorage.new);
  injector.addSingleton(CurrencyLocalStorage.new);
  injector.addSingleton(CurrencyApiService.new);
  injector.addSingleton(CurrencyViewModel.new);
}
