import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Container(
          margin: EdgeInsets.only(
            top: 4,
          ),
          child: Text('Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'ArchitypeRenner',
              fontWeight: FontWeight.w700,
            ),
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
              print('search');
            },
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: const Center(
        child: Text('My Page!'),
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
                  title: Text('screenAa', style: TextStyle(
                    fontSize: 15.0,
                  )),
                  onTap: (){
                    Navigator.pop(context);
                    //Navigator.pushNamed(context, '/a');
                  },
                  trailing: Icon(Icons.add),
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:
                  10.0),
                  dense:true,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('screenB', style: TextStyle(
                    fontSize: 15.0,
                  )),
                  onTap: (){
                    Navigator.pop(context);
                    //Navigator.pushNamed(context, '/b');
                  },
                  trailing: Icon(Icons.add),
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:
                  10.0),
                  dense:true,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('screenC', style: TextStyle(
                    fontSize: 15.0,
                  )),
                  onTap: (){
                    Navigator.pushNamed(context, '/c');
                  },
                  trailing: Icon(Icons.add),
                  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal:
                  10.0),
                  dense:true,
                ),
              ]
          )

      ),
    );
  }
}