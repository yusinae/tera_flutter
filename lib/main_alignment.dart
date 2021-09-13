import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

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
          title: Text('Menu Title222',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   color: Colors.black,
          //   onPressed: () {
          //     print('menu button is clicked');
          //   },
          // ),
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
        body: SafeArea(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center, //상하공백 포함, 세로중앙정렬
              //mainAxisSize: MainAxisSize.min, //상하공백 제거. 실제컨텐츠영역만 차지
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch, //children요소의 width 또는 height 죄다 100% 강제처리
              children: <Widget>[
                Container(
                  //width: double.infinity, //100%영역차지
                  //height: 10,
                  color: Colors.red,
                ),
                Container(
                  width: 120,
                  //height: 100,
                  color: Colors.black45,
                  child: Text('Hello22'),
                ),
                Container(
                  width: 120,
                  height: 100,
                  color: Colors.black45,
                  child: Text('Hello2'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.black45,
                  margin: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 0,
                  ), //EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  child: Text('Hello'),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

/*
class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
// ···
}*/
