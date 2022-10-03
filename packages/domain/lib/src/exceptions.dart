abstract class DomainException implements Exception {
  DomainException(this.baseError);

  final Exception? baseError;
}

class NoConnectionException extends DomainException {
  NoConnectionException(super.baseError);
}

class UnauthorizedException extends DomainException {
  UnauthorizedException(super.baseError);
}

class TimeoutException extends DomainException {
  TimeoutException(super.baseError);
}

class BadRequestException extends DomainException {
  BadRequestException(super.baseError);
}

class InternalServerException extends DomainException {
  InternalServerException(super.baseError);
}

class UnexpectedException extends DomainException {
  UnexpectedException(super.baseError);
}
