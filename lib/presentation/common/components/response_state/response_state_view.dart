import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';
import 'package:formula_one/presentation/common/theme/app_themes.dart';

class UnknownStateViewException implements Exception {}

class ResponseStateView<Loading extends ViewState, Error extends ViewState,
    Success extends ViewState> extends StatelessWidget {
  const ResponseStateView({
    required this.snapshot,
    required this.onSuccess,
    this.onLoading,
    this.onError,
    this.onTryAgainTap,
    super.key,
  });

  final AsyncSnapshot snapshot;
  final VoidCallback? onTryAgainTap;
  final Widget Function(BuildContext context, Success success) onSuccess;
  final Widget Function(BuildContext context, Loading? loading)? onLoading;
  final Widget Function(BuildContext context, Error? error)? onError;

  @override
  Widget build(BuildContext context) {
    final themes = AppThemes.of(context);

    final data = snapshot.data;
    if (data == null || data is Loading) {
      if (onLoading != null) {
        return onLoading!(context, data);
      }
      return Center(
        child: CircularProgressIndicator(
          color: themes.primaryColor,
        ),
      );
    }

    if (data is Error) {
      if (onError != null) {
        return onError!(context, data);
      }

      // TODO: implement error page
      return const Center(
        child: Text('Erro'),
      );
    }

    if (data is Success) {
      return onSuccess(context, data);
    }

    throw UnknownStateViewException();
  }
}
