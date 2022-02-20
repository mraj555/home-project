import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_project/firebase/login_page.dart';

import 'home_page.dart';

class DecisionsTree extends StatefulWidget {
  const DecisionsTree({Key? key}) : super(key: key);

  @override
  _DecisionsTreeState createState() => _DecisionsTreeState();
}

class _DecisionsTreeState extends State<DecisionsTree> {
  User? user;

  onRefresh(userCred) {
    setState(
      () {
        user = userCred;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    onRefresh(FirebaseAuth.instance.currentUser);
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return LoginPage(
        onSignInAno: (userCred) => onRefresh(userCred),
      );
    }
    return HomePage(onSignOut: (userCred) => onRefresh(userCred),);
  }
}
