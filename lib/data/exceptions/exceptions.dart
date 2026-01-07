import 'package:kambio_app/utils/exceptions/exception.dart';

class RemoteRepositoryException extends AppException {
  const RemoteRepositoryException(super.message, [super.stackTrace]);
}

class LocalStorageException extends AppException {
  const LocalStorageException(super.message, [super.stackTrace]);
}

class EmptyLocalStorageException extends AppException {
  const EmptyLocalStorageException(super.message, [super.stackTrace]);
}
