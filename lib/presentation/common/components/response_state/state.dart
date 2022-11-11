abstract class ViewState {}

class Loading implements ViewState {}

abstract class Error implements ViewState {}

class NoConnectionErrorViewState implements Error {}

class GenericError implements Error {}