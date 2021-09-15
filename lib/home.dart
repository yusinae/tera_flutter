import 'package:flutter/material.dart';
import 'drawer_contents.dart';
import 'package:tera_flutter/popup.dart';

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
          child: Text('export home',
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
              color: Color.fromRGBO(0, 0, 0, 1),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: Text('custom popup'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => popup(context),
                  );
                }
            ),
            ElevatedButton(
                child: Text('date picker'),
                onPressed: () {
                  Navigator.pushNamed(context, '/datepicker');
                }
            ),
          ],
        )
      ),
      drawer: Drawer(
        child: DrawerContents()
      )
    );
  }
}