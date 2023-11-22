import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wicaa_store/views/signup.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SignUpModel(),
      child: MaterialApp(
        home: SignUpPage(),
      ),
    ),
  );
}

class SignUpModel extends ChangeNotifier {
  bool _isSignedUp = false;

  bool get isSignedUp => _isSignedUp;

  void signUp() {
    _isSignedUp = true;
    notifyListeners();
  }
}
