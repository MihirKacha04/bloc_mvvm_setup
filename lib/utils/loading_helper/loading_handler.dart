import 'package:flutter/material.dart';
import 'package:neo_bench/extensions/build_context_ext.dart';

part 'loading_indicator.dart';


abstract class _DialogHandler {
  void startLoading();

  void stopLoading();


  void handleDialog(bool isLoading);
}

class LoadingDialogHandler implements _DialogHandler {
  LoadingDialogHandler({required this.context});

  final BuildContext context;

  @override
  void startLoading() {
    LoadingIndicator.show(context: context, );
  }

  @override
  void stopLoading() {
    context.navigator.pop();
  }


  @override
  void handleDialog(bool isLoading) {
    if (isLoading) {
      startLoading();
    } else {
      stopLoading();
    }
  }
}
