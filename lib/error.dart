import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('잘못된 url입니다.')],
              )
          )
      ),
    );
  }
}



