import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// --no-sound-null-safety

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double screenW = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text('Tab Menu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
                unselectedLabelColor: Colors.black54,
                isScrollable: true,
                labelColor: Colors.black87,
                labelStyle: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0,
                labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.red,
                ),
                tabs: [
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.zero,
                          ),
                          border: Border.all(color: Color(0xFFdfdfdf), width: 1)
                      ),
                      child: Text("Menu1",
                        style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w400, decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Color(0xFFdfdfdf), width: 1.0),
                              bottom: BorderSide(color: Color(0xFFdfdfdf), width: 1.0)
                          ),
                      ),
                      child: Text("Menu22",
                        style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w400, decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(5.0),
                          ),
                          border: Border.all(color: Color(0xFFdfdfdf), width: 1)
                      ),
                      child: Text("Menu3",
                        style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.w400, decoration: TextDecoration.none
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

