part of 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LanguageCubit>(create:(context) =>  LanguageCubit(),
    child: BlocBuilder<LanguageCubit,LanguageState>(builder: (context, state) {
      if(state is ChangeLanguage){
        return GestureDetector(
          onTap: CommonFunc.closeKeyboard,
          child: MaterialApp(
            builder: (context, child) {
              return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child!);
            },
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: lightTheme,
            routes: RouteManager.routes,
            initialRoute: RouteManager.initRoute,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale:  state.locale,
            supportedLocales: SupportedLanguage.values.map((lang) => Locale(lang.value)).toList(),
          ),
        );
      }
      return const SizedBox();

    },),);
  }
}
