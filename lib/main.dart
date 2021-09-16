import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'routes.dart';
import 'home.dart';
import 'screenA.dart';
import 'screenB.dart';
import 'screenC.dart';
import 'popup_datepicker.dart';
import 'error.dart';
import 'todolist.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
  printInteger(2);
}

void printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //static const appTitle = 'Drawer Demo2';

  @override
  Widget build(BuildContext context) {
    Map map2 = {'zero': 0, 'I': 'one', 10: 'X'};
    print(map2);

    return MaterialApp(
      //title: appTitle,
      //home: Home(title: appTitle),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        //'/a': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC(),
        '/datepicker': (context) => PopupDatepicker(),
        '/todolist': (context) => TodoList(),
      },
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ko', 'KR'),
      ],

      onGenerateRoute: (settings) {
        if (settings.name == "/a") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (context, animation, secondaryAnimation) => ScreenA(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              //return FadeTransition(opacity: animation, child: child); //단순 페이드아웃

              const begin = Offset(-1.0, 0.0);
              const end = Offset.zero;
              const curve = Curves.ease;
              //final tween = Tween(begin: begin, end: end);
              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              //final offsetAnimation = animation.drive(tween);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );

            },
          );
        }
        // Unknown route
        return MaterialPageRoute(builder: (context) => Error()); // 잘못된 url
      },
    );
  }
}


/*
class Home extends StatelessWidget {

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
          child: Text('title',
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
                  title: Text('screenA', style: TextStyle(
                    fontSize: 15.0,
                  )),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/a');
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
                    Navigator.pushNamed(context, '/b');
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
*/
