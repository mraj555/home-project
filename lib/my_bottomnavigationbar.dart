import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  var _currentindex = 0;

  var _show = [
    Center(
      child: Icon(Icons.home, size: 30),
    ),
    Center(
      child: Icon(Icons.chat, size: 30),
    ),
    Center(
      child: Icon(Icons.camera_alt_rounded, size: 30),
    ),
    Center(
      child: Icon(Icons.favorite_border, size: 30),
    ),
    Center(
      child: Icon(Icons.account_circle, size: 30),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          shadowColor: Colors.orange,
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          titleTextStyle: TextStyle(fontSize: 20),
          centerTitle: true,
          title: Text('Bottom Navigation Bar'),
        ),
        body: _show[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          elevation: 15,
          onTap: (newIndex) {
            setState(
              () {
                _currentindex = newIndex;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.black,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              backgroundColor: Colors.orange,
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_rounded),
              backgroundColor: Colors.blue,
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              backgroundColor: Colors.redAccent,
              label: 'Like',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              backgroundColor: Colors.tealAccent,
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
