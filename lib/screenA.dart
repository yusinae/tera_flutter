import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('ScreenA',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            color: Colors.grey[800],
            icon: Icon(Icons.arrow_back),
            iconSize: 20,
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black, elevation: 0.0, textStyle: TextStyle(fontSize: 10)),
                child: Text('screen B'),
                onPressed: () {
                  Navigator.pushNamed(context, '/b');
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 0.0, textStyle: TextStyle(color: Colors.red, fontSize: 10)),
                child: Text('screen C'),
                onPressed: () {
                  Navigator.pushNamed(context, '/c');
                },
              ),
            ]
          )
        )
      ),
    );
  }
}



