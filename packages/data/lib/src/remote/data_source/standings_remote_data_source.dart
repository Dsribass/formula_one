import '../infra/path_builder.dart';
import '../remote.dart';

abstract class StandingsRemoteDataSource {}

class ApiStandingsRemoteDataSource implements StandingsRemoteDataSource {
  ApiStandingsRemoteDataSource({
    required this.dio,
    required this.pathBuilder,
  });

  final StandingsHttpClientDio dio;
  final PathBuilder pathBuilder;
}
