import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({Key? key}) : super(key: key);

  @override
  _MyChoiceChipState createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool _isSelected = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 15,
          title: Text('Choice Chip'),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          backgroundColor: Colors.black,
          shadowColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChoiceChip(
                label: Text('Google'),
                selected: _isSelected,
                onSelected: (newValue) {
                  setState(
                    () {
                      _isSelected = newValue;
                    },
                  );
                },
                selectedColor: Colors.green,
                avatar: Image.network(
                  'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
                ),
              ),
              ChoiceChip(
                label: Text('FaceBook'),
                selected: _isSelected1,
                onSelected: (newValue) {
                  setState(
                    () {
                      _isSelected1 = newValue;
                    },
                  );
                },
                selectedColor: Colors.lightBlueAccent,
                avatar: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/800px-2021_Facebook_icon.svg.png',
                ),
              ),
              ChoiceChip(
                label: Text('WhatsApp'),
                selected: _isSelected2,
                onSelected: (newValue) {
                  setState(
                    () {
                      _isSelected2 = newValue;
                    },
                  );
                },
                selectedColor: Colors.lightGreen,
                avatar: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/897px-WhatsApp.svg.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
