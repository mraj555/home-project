import 'package:flutter/material.dart';

class MyAnimatedCrossfade extends StatefulWidget {
  const MyAnimatedCrossfade({Key? key}) : super(key: key);

  @override
  _MyAnimatedCrossfadeState createState() => _MyAnimatedCrossfadeState();
}

class _MyAnimatedCrossfadeState extends State<MyAnimatedCrossfade> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Animated Cross Fade'),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                onPressed: () {
                  setState(
                    () {
                      _value = !_value;
                    },
                  );
                },
                icon: Icon(Icons.swipe),
              ),
            ),
          ],
        ),
        body: Center(
          child: AnimatedCrossFade(
            firstChild: Image.network(
              'https://i.pinimg.com/474x/d6/41/a8/d641a8e778f0ace9d855070eb8df550e--texas-hill-country-texas-sunset.jpg',
              // width: 350,
            ),
            secondChild: Image.network(
              'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?k=20&m=517188688&s=612x612&w=0&h=i38qBm2P-6V4vZVEaMy_TaTEaoCMkYhvLCysE7yJQ5Q=',
              // width: 200,
            ),
            crossFadeState:
                _value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
