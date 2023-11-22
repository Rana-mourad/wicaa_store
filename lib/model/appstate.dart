import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  String _appTitle = 'Wiccaa';

  String get appTitle => _appTitle;

  void updateAppTitle(String newTitle) {
    _appTitle = newTitle;
    notifyListeners();
  }
}
