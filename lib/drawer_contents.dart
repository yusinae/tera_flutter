import 'package:flutter/material.dart';

class DrawerContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
                accountName: Text('sinaed'),
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
        );
  }
}