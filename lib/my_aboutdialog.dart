import 'package:flutter/material.dart';

class MyAboutdialog extends StatefulWidget {
  const MyAboutdialog({Key? key}) : super(key: key);

  @override
  _MyAboutdialogState createState() => _MyAboutdialogState();
}

class _MyAboutdialogState extends State<MyAboutdialog> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20),
          title: Text('AboutDialog'),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: Center(
          child: ListTile(
            onTap: () {
              showAboutDialog(
                context: context,
                applicationIcon: FlutterLogo(),
                applicationLegalese: 'Legalese Information...',
                applicationName: 'Flutter Mobile App',
                applicationVersion: '2.2',
              );
            },
            title: Text(
              'More Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
