import 'package:flutter/material.dart';

class MyFittedBox extends StatefulWidget {
  const MyFittedBox({Key? key}) : super(key: key);

  @override
  _MyFittedBoxState createState() => _MyFittedBoxState();
}

class _MyFittedBoxState extends State<MyFittedBox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: Colors.black,
          title: Text('Fitted Box'),
          titleTextStyle: TextStyle(fontSize: 20),
          centerTitle: true,
          elevation: 15,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Without Fitted Box',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                width: 300,
                height: 150,
                color: Colors.red,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Hello Flutter',
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Using Fitted Box',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decorationStyle: TextDecorationStyle.double,
                  textBaseline: TextBaseline.ideographic,
                  decoration: TextDecoration.underline,
                ),
              ),
              Container(
                width: 300,
                height: 150,
                color: Colors.green,
                padding: EdgeInsets.all(10),
                child: FittedBox(
                  child: Text(
                    'Hello Flutter',
                    style: TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
