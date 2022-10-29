import 'package:domain/domain.dart';
import 'package:formula_one/common/subscription_disposer.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';
import 'package:formula_one/presentation/standings/driver/driver_standings_models.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class DriverStandingsBloc with SubscriptionDisposer {
  DriverStandingsBloc({
    required this.getCurrentDriverStandings,
  }) {
    Rx.merge([
      Stream.value(null),
      _onTryAgainSubject.stream,
    ])
        .flatMap((_) => _mapToDriverStandingsState())
        .listen(_onNewStateSubject.add)
        .addTo(subscriptions);
  }

  final GetCurrentDriverStandings getCurrentDriverStandings;

  final _onNewStateSubject = BehaviorSubject<ViewState>();
  Stream<ViewState> get onNewStateStream => _onNewStateSubject.stream;

  final _onTryAgainSubject = PublishSubject<void>();
  Sink<void> get onTryAgainSink => _onTryAgainSubject.sink;

  Stream<ViewState> _mapToDriverStandingsState() async* {
    yield Loading();

    try {
      final driverStandings = await getCurrentDriverStandings(NoParams());
      yield Success(driverStandings: driverStandings);
    } catch (_) {
      // TODO: handle errors
      yield GenericError();
    }
  }

  void dispose() {
    disposeSubscriptions();
  }
}
