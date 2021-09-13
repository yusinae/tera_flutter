import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());
// --no-sound-null-safety
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    print(wordPair.asPascalCase);
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text('Menu Title22',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          actions: <Widget>[
            Transform.translate(
              offset: Offset(5, 0),
              child: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: () {
                  print('search');
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
                print('home');
              },
            ),
          ],
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset('assets/images/sample_coffee.png'),
                  // child: Text(
                  //   'Big Sur',
                  //   style: TextStyle(fontSize: 200, color: Colors.white),
                  // ),
                ),
                currentAccountPictureSize: Size(80, 80),
                otherAccountsPicturesSize: Size(70, 70),
                // currentAccountPicture: FittedBox(
                //   child: Image.asset('assets/images/sample_coffee.png'),
                //   //fit: BoxFit.fill,
                // ),
                //currentAccountPicture: new Image.asset('assets/images/qr.jpg', width: 18.0, height: 18.0),
                accountName: Text('sinae'),
                accountEmail: Text('sinae@test.co.kr'),
                onDetailsPressed:(){
                  print('arrow is clicked');
                },
                otherAccountsPictures: <Widget>[
                  Image.asset('assets/images/qr.jpg', width: 28.0, height: 28.0),
                ],
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    //bottomLeft: Radius.circular(40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('setting', style: TextStyle(
                  fontSize: 15.0,
                )),
                onTap: (){
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
                contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:
                10.0),
                dense:true,

              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('setting', style: TextStyle(
                    fontSize: 15.0,
                )),
                onTap: (){
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
                contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:
                10.0),
                dense:true,
              ),
            ]
          ),
        ),
        body: Center(
          child: TextButton(
              onPressed: (){
                flutterToast();
              },
              child: Text('Toast'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black45),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.all(Colors.black)
              ),

              //color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(msg: 'Flutter toast',
    gravity: ToastGravity.TOP,
    backgroundColor: Colors.redAccent,
    fontSize: 15.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}


