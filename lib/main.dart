import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:neo_bench/core/languageCubit/language_cubit.dart';
import 'package:neo_bench/routes/route_manager.dart';
import 'package:neo_bench/services/preferenceService/pref_manager.dart';
import 'package:neo_bench/utils/common_functions.dart';
import 'package:neo_bench/utils/theme.dart';

import 'generated/l10n.dart';
part 'my_app.dart';
Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  _init();
  _setOrientation();
  _setSystemUIOverlayStyle();
  runApp(const MyApp());
}

void _init() {
  NeoBenchPreference.instance.init();
}


void _setOrientation() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

void _setSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    systemNavigationBarColor: Colors.white,
  ));
}