import 'package:flutter/material.dart';

class MyLightDarkMode extends StatefulWidget {
  const MyLightDarkMode({Key? key}) : super(key: key);

  @override
  _MyLightDarkModeState createState() => _MyLightDarkModeState();
}

class _MyLightDarkModeState extends State<MyLightDarkMode> {
  bool _userpreference = true;
  bool _lightmode = false;
  bool _darkmode = false;

  ThemeMode? _themeMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text('Light & Dark Mode'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
            ),
            titleTextStyle: TextStyle(fontSize: 20),
            centerTitle: true,
            elevation: 15,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SwitchListTile(
                value: _userpreference,
                onChanged: (newValue) {
                  _userpreference
                      ? print('Blocked')
                      : setState(
                          () {
                            _userpreference = true;
                            _lightmode = false;
                            _darkmode = false;
                            _themeMode = null;
                          },
                        );
                },
                title: Text('User Preference'),
              ),
              SwitchListTile(
                value: _lightmode,
                onChanged: (newValue) {
                  _lightmode
                      ? print('Blocked')
                      : setState(
                          () {
                            _userpreference = false;
                            _lightmode = true;
                            _darkmode = false;
                            _themeMode = ThemeMode.light;
                          },
                        );
                },
                title: Text('Light Mode'),
              ),
              SwitchListTile(
                value: _darkmode,
                onChanged: (newValue) {
                  _darkmode
                      ? print('Blocked')
                      : setState(
                          () {
                            _userpreference = false;
                            _lightmode = false;
                            _darkmode = true;
                            _themeMode = ThemeMode.dark;
                          },
                        );
                },
                title: Text('User Preference'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
