import 'package:flutter/cupertino.dart';
import 'package:neo_bench/core/base_cubit.dart';

part 'splash_state.dart';

class SplashCubit extends BaseCubit<SplashState> {
  SplashCubit(BuildContext context) : super(SplashInitial(),context: context);
}
