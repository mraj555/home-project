import 'package:flutter/material.dart';

class MyNeumorphismButton extends StatefulWidget {
  const MyNeumorphismButton({Key? key}) : super(key: key);

  @override
  _MyNeumorphismButtonState createState() => _MyNeumorphismButtonState();
}

class _MyNeumorphismButtonState extends State<MyNeumorphismButton> {
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
          titleTextStyle: TextStyle(fontSize: 20),
          centerTitle: true,
          title: Text('Neumorphism Button'),
          elevation: 15,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                width: 400,
                padding: EdgeInsets.only(right: 120,left: 120,top: 70,bottom: 70),
                color: Colors.grey[300],
                child: Container(
                  height: 200,
                  width: 200,
                  child: Icon(
                    Icons.android_sharp,
                    size: 80,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-5, -5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 400,
                padding: EdgeInsets.only(right: 120,left: 120,top: 70,bottom: 70),
                color: Colors.grey[850],
                child: Container(
                  height: 200,
                  width: 200,
                  child: Icon(
                    Icons.android_sharp,
                    size: 80,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey[850],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade900,
                        offset: Offset(5, 5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      BoxShadow(
                        color: Colors.grey.shade800,
                        offset: Offset(-5, -5),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
