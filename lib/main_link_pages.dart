import 'package:flutter/material.dart';
import 'screenA.dart';
import 'screenB.dart';
import 'screenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: MyPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyPage(),
        '/a': (context) => ScreenA(),
        //'/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
      },
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('screen aA'),
        onPressed: () {
          Navigator.pushNamed(context, '/a');
        }
        // onPressed: () =>
        //   Navigator.push(context, MaterialPageRoute(
        //       builder: (context) => ScreenA()
        //   )),
      ),
    );
  }
}

