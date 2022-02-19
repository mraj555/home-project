import 'package:flutter/material.dart';
import 'dart:async';

class MyAdaptive extends StatefulWidget {
  const MyAdaptive({Key? key}) : super(key: key);

  @override
  _MyAdaptiveState createState() => _MyAdaptiveState();
}

class _MyAdaptiveState extends State<MyAdaptive> {
  var _slide = 0.0;

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
          title: Text('Adaptive'),
          elevation: 15,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Slider.adaptive(
              value: _slide,
              onChanged: (newValue) {
                setState(
                      () {
                    _slide = newValue;
                  },
                );
              },
            ),
            SwitchListTile.adaptive(
              title: Text('Switch List Tile'),
              value: true,
              onChanged: (bool newValue) {},
            ),
            Switch.adaptive(
              value: true,
              onChanged: (newValue) {},
            ),
            Icon(
              Icons.adaptive.share,
            ),
            CircularProgressIndicator.adaptive(),
          ],
        ),
      ),
    );
  }
}
