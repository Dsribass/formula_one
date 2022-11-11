import 'package:flutter/material.dart';
import 'package:formula_one/presentation/common/components/response_state/state.dart';
import 'package:formula_one/presentation/common/theme/formula_one_colors.dart';
import 'package:formula_one/presentation/common/theme/formula_one_text_styles.dart';

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
    final colors = FormulaOneColors.of(context);
    final styles = FormulaOneTextStyles.of(context);

    final data = snapshot.data;
    if (data == null || data is Loading) {
      if (onLoading != null) {
        return onLoading!(context, data);
      }
      return Center(
        child: CircularProgressIndicator(color: colors.primary),
      );
    }

    if (data is Error) {
      if (onError != null) {
        return onError!(context, data);
      }

      // TODO: implement error page
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  'Desculpe, ocorreu um erro...',
                  style: styles.errorTitle,
                  softWrap: true,
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              onTryAgainTap != null
                  ? ElevatedButton(
                      onPressed: onTryAgainTap,
                      child: Text('Tentar novamente!'),
                    )
                  : Container(),
            ],
          ),
        ),
      );
    }

    if (data is Success) {
      return onSuccess(context, data);
    }

    throw UnknownStateViewException();
  }
}
