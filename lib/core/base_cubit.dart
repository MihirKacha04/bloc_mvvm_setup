import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_bench/services/preferenceService/pref_manager.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(T super.initialState, {required this.context});

  BuildContext context;

  final NeoBenchPreference _preference = NeoBenchPreference.instance;

  Future<T> processApi<T>(
      {required Future<T> Function() process,
        required Function(bool) loadingHandler}) async {
    loadingHandler.call(true);
    var result = await process.call();
    loadingHandler.call(false);

    return result;
  }
}
