import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final Function(User?) onSignOut;
  const HomePage({required this.onSignOut});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(
              () async {
                await FirebaseAuth.instance.signOut();
                widget.onSignOut(null);
              },
            );
          },
          child: Text('Sign Out'),
        ),
      ),
    );
  }
}
