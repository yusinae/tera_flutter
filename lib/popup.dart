import 'package:flutter/material.dart';

Widget popup(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)), //this right here
    child: Stack(
      clipBehavior: Clip.none, // 동일 overflow: Overflow.visible,
      //alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 360,
          height: 200,
          child: Padding(
            padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset('assets/images/qr.jpg', width: 50.0, height: 50.0),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'What do you want to remember?'),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            //width: MediaQuery.of(context).size.width * 1,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(0, 0, 0, 0.8),
                  elevation: 0.0,
                  textStyle: TextStyle(fontSize: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.zero,
                        bottom: Radius.circular(15.0),
                    )
                  ),
              ),
              onPressed: () {},
              child: Text("Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        Positioned(
          top: -25,
          right: 7,
          child: Image.asset('assets/images/btn_close_wh.png', width: 18, height: 18),
          /*
          child: IconButton(
            icon: Image.asset('assets/images/btn_close_wh.png'),
            iconSize: 20,
            onPressed: () {},
          ),
          */
          //child: Image.network("https://i.imgur.com/2yaf2wb.png", width: 150, height: 150)
          //child: Image.asset('assets/images/btn_close_wh.png', width: 15, height: 15),
        )
      ],
    )
  );

}


/*
Widget popup(BuildContext context) {
  return new AlertDialog(
    title: const Text('Popup example2'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hello2"),
      ],
    ),
    actions: <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(primary: Colors.black, elevation: 0.0, textStyle: TextStyle(fontSize: 10)),
        child: const Text('Close'),
      ),
    ],
  );

}
* */