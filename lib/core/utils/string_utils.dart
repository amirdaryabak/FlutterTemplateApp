import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class StringUtils {
  static final StringUtils _utils = StringUtils._internal();
  static const _locale = 'en';

  factory StringUtils() {
    return _utils;
  }

  static String formatNumber(String s) => intl.NumberFormat.decimalPattern(_locale).format(double.parse(s));

  static String getDateFormattedText(DateTime dateTime) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }

  static String getJalaliFormattedText(DateTime dateTime) {
    return Jalali.fromDateTime(dateTime).formatCompactDate();
  }

  static TextEditingValue addSemicolonToNumber(String value) {
    value = StringUtils.formatNumber(value.replaceAll(',', ''));
    return TextEditingValue(
      text: value,
      selection: TextSelection.collapsed(offset: value.length),
    );
  }

  static String removeSemicolonsFromNumber(String value) {
    return value.replaceAll(',', '');
  }

  StringUtils._internal();
}
