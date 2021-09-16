import 'package:flutter/material.dart';
import 'home.dart';
import 'screenA.dart';
import 'screenB.dart';
import 'screenC.dart';

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/a': (context) => ScreenA(),
        //'/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}



