import 'package:meta/meta.dart';

abstract class UseCase<Param,Response> {
   const UseCase();

  @protected
  Future<Response> execute(Param params);

  Future<Response> call(Param params) async {
      return await execute(params);
      // TODO(any): add logger
  }
}

class NoParams {}