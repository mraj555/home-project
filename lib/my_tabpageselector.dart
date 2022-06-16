import 'package:flutter/material.dart';

class MyTabPageSelector extends StatefulWidget {
  const MyTabPageSelector({Key? key}) : super(key: key);

  @override
  _MyTabPageSelectorState createState() => _MyTabPageSelectorState();
}

class _MyTabPageSelectorState extends State<MyTabPageSelector> {
  var icons = [
    Icon(Icons.home),
    Icon(Icons.video_call_outlined),
    Icon(Icons.camera_alt_rounded),
    Icon(Icons.favorite_border),
    Icon(Icons.account_circle),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          titleTextStyle: TextStyle(fontSize: 20),
          centerTitle: true,
          title: Text('Tab Page Selector'),
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: DefaultTabController(
          length: icons.length,
          child: Builder(
            builder: (context) {
              return Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Center(
                      child: TabPageSelector(
                        indicatorSize: 12,
                      ),
                    ),
                    Expanded(
                      child: IconTheme(
                        data: IconThemeData(
                          size: 130.0,
                          color: Colors.black,
                        ),
                        child: TabBarView(
                          children: icons,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
