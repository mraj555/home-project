import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_project/firebase/decisions_tree.dart';
import 'package:home_project/firebase/login_page.dart';
import 'package:home_project/my_aboutdialog.dart';
import 'package:home_project/my_adaptive.dart';
import 'package:home_project/my_animatedcrossfade.dart';
import 'package:home_project/my_bottomnavigationbar.dart';
import 'package:home_project/my_choicechip.dart';
import 'package:home_project/my_cliprrect.dart';
import 'package:home_project/my_dotindicator.dart';
import 'package:home_project/my_expansiontile.dart';
import 'package:home_project/my_fittedbox.dart';
import 'package:home_project/my_lightdarkmode.dart';
import 'package:home_project/my_neumorphismbutton.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DecisionsTree(),
    ),
  );
}

// void main() {
//   runApp(
//     MyLightDarkMode(),
//   );
// }
