import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wicaa_store/views/signin.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SignInModel(),
      child: MaterialApp(
        home: SignInPage(),
      ),
    ),
  );
}

class SignInModel extends ChangeNotifier {
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  void signIn() {
    _isSignedIn = true;
    notifyListeners();
  }

  void signOut() {
    _isSignedIn = false;
    notifyListeners();
  }
}
