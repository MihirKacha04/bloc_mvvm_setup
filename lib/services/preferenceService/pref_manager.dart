import 'package:neo_bench/core/languageCubit/language_cubit.dart';
import 'package:neo_bench/services/preferenceService/pref_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NeoBenchPreference{
  NeoBenchPreference._();
  static final NeoBenchPreference _instance = NeoBenchPreference._();
  static NeoBenchPreference get instance => _instance;

  SharedPreferences? prefs;
  Future<void> init()async{
    prefs = await SharedPreferences.getInstance();
  }



// app language
  set setAppLanguage(SupportedLanguage lang) =>
      prefs?.setString(PrefKey.appLanguage, lang.value);

  SupportedLanguage get appLanguage => SupportedLanguage.values
      .where((element) =>
  element.value ==
      (prefs?.getString(PrefKey.appLanguage) ??
          SupportedLanguage.english.value))
      .first;

  void clear() {
    SupportedLanguage lang = appLanguage;
    prefs?.clear();
    setAppLanguage = lang;
  }
}