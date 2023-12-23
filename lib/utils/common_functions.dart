import 'package:flutter/material.dart';
import 'package:neo_bench/extensions/build_context_ext.dart';
import 'package:neo_bench/extensions/int_ext.dart';

import 'enums.dart';

class CommonFunc{
  static void closeKeyboard()=> FocusManager.instance.primaryFocus?.unfocus();

  static void showSnackBar({required BuildContext context, required String msg, SnackBarType type = SnackBarType.success}) {
    var snackBar = SnackBar(
      content: Text(
        msg,
        style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.onBackground),
      ),
      backgroundColor: type == SnackBarType.success ? context.colorScheme.primary : context.colorScheme.error,
      duration: 1.seconds,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}