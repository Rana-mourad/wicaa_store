import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wicaa_store/views/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        hintColor: Colors.yellowAccent,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
              ),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text('Receive promotional offers and updates'),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the home page on sign-up button press
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10.0),
              TextButton(
                onPressed: () {
                  // Navigate to the login page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Text('Already have an account? Login Here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Text('Welcome to Login Page'),
      ),
    );
  }
}
