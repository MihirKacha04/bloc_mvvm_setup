import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  dialogTheme: const DialogTheme(elevation: 0, shadowColor: Colors.transparent),
  textTheme:  _textTheme,
  appBarTheme: _appbarTheme,
  // scaffoldBackgroundColor:
  // dialogBackgroundColor: ,
  // fontFamily:
  colorScheme: _colorScheme,
  inputDecorationTheme: _inputDecorationTheme

);


ColorScheme get _colorScheme => ColorScheme(
    background: Colors.white,
    primary: const Color(0xFF3654C5),
    onPrimary: const Color(0xFFE7F2FF),
    brightness: Brightness.light,
    secondary: const Color(0xFFFF8A00),
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.red,
    onBackground: Colors.white,
    surface: const Color(0xFF787880).withOpacity(0.20),
    onSurface: const Color(0xFF787880).withOpacity(0.8),
    onTertiary: Colors.white);
TextTheme get _textTheme => TextTheme(

);

AppBarTheme get _appbarTheme =>AppBarTheme();


InputDecorationTheme get _inputDecorationTheme =>  InputDecorationTheme();