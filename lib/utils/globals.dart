import 'package:flutter/material.dart';

class Globals {
  static final Globals _instance = Globals._internal();
  late GlobalKey<ScaffoldState> scaffoldHomeKey;
  factory Globals() {
    return _instance;
  }
  Globals._internal() {
    // initialization logic
    scaffoldHomeKey = GlobalKey<ScaffoldState>();
  }

  getScffoldHomeKey() => scaffoldHomeKey;
}
