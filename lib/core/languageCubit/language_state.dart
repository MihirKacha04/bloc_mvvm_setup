part of 'language_cubit.dart';

abstract class LanguageState {}

class LanguageInitial extends LanguageState {}

class ChangeLanguage extends LanguageState {
  final Locale locale;

  ChangeLanguage({required this.locale});
}
