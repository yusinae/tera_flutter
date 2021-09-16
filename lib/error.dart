import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text('WRONG PAGE',
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
                  children: [Text('잘못된 url입니다.')],
              )
          )
      ),
    );
  }
}



