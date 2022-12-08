import 'package:domain/domain.dart';
import 'package:formula_one/common/subscription_disposer.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';
import 'package:formula_one/presentation/standings/constructor/constructor_standings_models.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class ConstructorStandingsBloc with SubscriptionDisposer {
  ConstructorStandingsBloc({
    required this.getConstructorStandings,
  }) {
    Rx.merge([
      Stream.value(null),
      _onTryAgainSubject.stream,
    ])
        .flatMap((_) => _mapToConstructorStandingsState())
        .listen(_onNewStateSubject.add)
        .addTo(subscriptions);

    _onDatePickSubject
        .flatMap(_mapToConstructorStandingsState)
        .listen(_onNewStateSubject.add)
        .addTo(subscriptions);
  }

  final GetConstructorStandings getConstructorStandings;

  final _onNewStateSubject = BehaviorSubject<ViewState>();
  Stream<ViewState> get onNewStateStream => _onNewStateSubject.stream;

  final _onDatePickSubject = PublishSubject<int>();
  Sink<int> get onDatePickSink => _onDatePickSubject.sink;

  final _onTryAgainSubject = PublishSubject<void>();
  Sink<void> get onTryAgainSink => _onTryAgainSubject.sink;

  Stream<ViewState> _mapToConstructorStandingsState([int? year]) async* {
    yield Loading();

    try {
      final constructorStandings = await getConstructorStandings(
        GetConstructorParams(year: year),
      );
      yield Success(constructorStanding: constructorStandings);
    } catch (_) {
      yield GenericError();
    }
  }

  void dispose() {
    disposeSubscriptions();
  }
}
