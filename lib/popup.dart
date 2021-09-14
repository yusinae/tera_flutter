import 'package:flutter/material.dart';

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