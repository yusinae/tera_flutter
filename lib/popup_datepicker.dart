import 'package:flutter/material.dart';

class PopupDatepicker extends StatefulWidget {
  @override
  _PopupDatepickerState createState()
  {
    return _PopupDatepickerState();
  }
}

class _PopupDatepickerState extends State<PopupDatepicker> {
  String date = "";
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Datepicker',
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
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text("Choose Date"),
            ),
            Text("${selectedDate.day}/${selectedDate.month}/${selectedDate.year}")
          ],
        ),
      ),
    );
  }

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker( //showDatePicker
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
      //initialDatePickerMode: DatePickerMode.year,
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}