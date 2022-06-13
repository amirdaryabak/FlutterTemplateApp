import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static final Utils _utils = Utils._internal();

  // TODO amir publish: make it false
  static bool isPrePublishTest = true;

  factory Utils() {
    return _utils;
  }

  static void toasty({
    required String msg,
    toastLength = Toast.LENGTH_SHORT,
    gravity = ToastGravity.CENTER,
  }) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength,
        gravity: gravity,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  static bool isPhoneNumberValid(String input) {
    RegExp regExp = RegExp(
      r"09(1[0-9]|3[0-9]|2[0-9]|0[0-9]|4[0-9]|9[0-9])-?[0-9]{3}-?[0-9]{4}$",
      caseSensitive: false,
      multiLine: false,
    );
    return regExp.hasMatch(input);
  }

  static String addZeroBeginningOfString(String input) {
    return '0$input';
  }

  Utils._internal();
}