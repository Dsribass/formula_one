import 'package:meta/meta.dart';

abstract class UseCase<Param, Response> {
  const UseCase();

  @protected
  Future<Response> execute(Param params);

  Future<Response> call(Param params) async {
    try {
      return await execute(params);
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

class NoParams {}
