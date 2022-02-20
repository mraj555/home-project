import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {
  const MyExpansionTile({Key? key}) : super(key: key);

  @override
  _MyExpansionTileState createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 15,
          title: Text('Expansion Tile'),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
        ),
        body: ExpansionTile(
          title: Text('See More'),
          leading: Icon(Icons.info),
          backgroundColor: Colors.black12,
          children: [
            ListTile(
              title: Text('First'),
            ),
            ListTile(
              title: Text('Second'),
            ),
            ListTile(
              title: Text('Third'),
            ),
            ExpansionTile(
              title: Text('Fourth'),
              children: [
                ListTile(
                  title: Text('Fourth-1'),
                ),
                ListTile(
                  title: Text('Fourth-2'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
