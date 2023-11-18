import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wicaa_store/views/homepage.dart';
import 'package:wicaa_store/views/landingpage.dart';
import 'package:wicaa_store/views/signin.dart';
import 'package:wicaa_store/views/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wicca',
      theme: ThemeData(
        textTheme: GoogleFonts.soraTextTheme(),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
      ),
      initialRoute: "/landingpage", // Set the initial route to the login page
      routes: {
        "/home": (context) => HomePage(),
        "/signup": (context) => SignUpPage(),
        "/signin": (context) => SignInPage(),
        "/landingpage": (context) => LandingPage(),
      },
    );
  }
}
