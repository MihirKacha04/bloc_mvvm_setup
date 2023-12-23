import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neo_bench/services/preferenceService/pref_manager.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  Locale _currentLocale = const Locale('en');


  NeoBenchPreference neoBenchPreference = NeoBenchPreference.instance;

  LanguageCubit() : super(LanguageInitial()){
getSavedLang();
  }
  void changeLanguage(SupportedLanguage newLanguage) {
    _currentLocale = Locale(newLanguage.value);
     neoBenchPreference.setAppLanguage = newLanguage;
    emit(ChangeLanguage(locale: _currentLocale));
  }
  void getSavedLang(){
    _currentLocale = Locale(neoBenchPreference.appLanguage.value);
    emit(ChangeLanguage(locale: _currentLocale));
  }
}

enum SupportedLanguage {
  english(value: 'en');


  const SupportedLanguage({required this.value});

  final String value;
}

