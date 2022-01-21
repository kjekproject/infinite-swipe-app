import 'package:flutter/material.dart';
import 'package:infinite_swipe_app/app.dart';
import 'package:infinite_swipe_app/constants/shared_pref_key_names.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  int? pageIndex = await _getPageIndexFromSharedPref();

  runApp(
    App(
      pageIndex: pageIndex,
    ),
  );
}

Future<int?> _getPageIndexFromSharedPref() async {
  final pref = await SharedPreferences.getInstance();
  int? pageIndex = pref.getInt(kPrefKey);
  return pageIndex;
}