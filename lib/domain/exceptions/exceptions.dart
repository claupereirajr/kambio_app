import 'package:kambio_app/utils/exceptions/exception.dart';

class InvalidRepositoryUrlException extends AppException {
  InvalidRepositoryUrlException() : super('Invalid Repository Url');
}
