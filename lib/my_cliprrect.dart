import 'package:flutter/material.dart';

class MyClipRRect extends StatefulWidget {
  const MyClipRRect({Key? key}) : super(key: key);

  @override
  _MyClipRRectState createState() => _MyClipRRectState();
}

class _MyClipRRectState extends State<MyClipRRect> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          titleTextStyle: TextStyle(fontSize: 20),
          centerTitle: true,
          title: Text('ClipRRect'),
          elevation: 15,
        ),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              'https://static.toiimg.com/thumb/msid-31346158,width-748,height-499,resizemode=4,imgsize-114461/.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
