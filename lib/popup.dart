import 'package:flutter/material.dart';

Widget popup(BuildContext context) {
  return Dialog(
    shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.circular(20.0)), //this right here
    child: Container(
      height: 200,
      child: Padding(
        padding: EdgeInsets.all(20.0),
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
            SizedBox(
              width: 320.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color.fromRGBO(0, 0, 0, 0.8), elevation: 0.0, textStyle: TextStyle(fontSize: 12)),
                onPressed: () {},
                child: Text("Save2",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ),
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