import 'package:flutter/material.dart';
import 'package:neo_bench/generated/l10n.dart';
import 'package:neo_bench/utils/common_functions.dart';
import 'package:neo_bench/utils/enums.dart';

extension Ext on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  EdgeInsets get mPadding => MediaQuery.of(this).padding;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  ThemeData get theme => Theme.of(this);

  NavigatorState get navigator => Navigator.of(this);

  dynamic get args => ModalRoute.of(this)?.settings.arguments;


  S get l10n => S.of(this);

  void showSuccessSnackBar({required String message}) {
    CommonFunc.showSnackBar(context: this, msg: message, type: SnackBarType.success);
  }

  void showErrorSnackBar({required String message}) {
    CommonFunc.showSnackBar(context: this, msg: message, type: SnackBarType.error);
  }
}
