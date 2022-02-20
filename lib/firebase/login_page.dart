import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final Function(User?) onSignInAno;
  const LoginPage({required this.onSignInAno});

  loginAno() async {
    UserCredential userCredentials =
        await FirebaseAuth.instance.signInAnonymously();
    onSignInAno(userCredentials.user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            loginAno();
          },
          child: Text('Sign In'),
        ),
      ),
    );
  }
}
