import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_bench/modules/splash/cubit/splash_cubit.dart';

class SplashScreenUI extends StatelessWidget {
  static const String routeManager = "/";

  static Widget builder(BuildContext context){
    return BlocProvider<SplashCubit>(create: (context) => SplashCubit(context),child: const SplashScreenUI(),);
  }
  const SplashScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash"),
      ),
    );
  }
}
