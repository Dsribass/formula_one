import 'package:rxdart/rxdart.dart';

mixin SubscriptionDisposer {
  final subscriptions = CompositeSubscription();

  void disposeSubscriptions() {
    subscriptions.dispose();
  }
}