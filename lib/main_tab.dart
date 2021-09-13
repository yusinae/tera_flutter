import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 0.0,
            title: Text('Tab Menu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                //indicatorWeight: 1,
                automaticIndicatorColorAdjustment: false,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: Colors.white
                ),
                labelColor: Colors.black87,
                tabs: [
                  Tab(
                    child: Container(
                      alignment: Alignment.centerRight,
                      //constraints: BoxConstraints.expand(width: 100),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            topRight: Radius.zero,
                            bottomLeft: Radius.circular(5.0),
                            bottomRight: Radius.zero,
                          ),
                          //borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black12, width: 1)
                      ),
                      child: Align(
                        //alignment: Alignment.center,
                        child: Text("Menu1",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.zero,
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.zero,
                          ),
                          //borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black12, width: 1)
                      ),
                      child: Align(
                        //alignment: Alignment.center,
                        child: Text("Menu2",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.zero,
                            topRight: Radius.circular(5.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(5.0),
                          ),
                          border: Border.all(color: Colors.black12, width: 1)
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Menu3",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
            /*
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),


              tabs: <Tab>[
                Tab(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('menu1'),
                    Icon(Icons.directions_car, color:Colors.blue),
                  ],
                )),
                Tab(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('menu2'),
                    Icon(Icons.directions_bike, color:Colors.blue)
                  ],
                )),
                Tab(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('menu31'),
                    Icon(Icons.directions_walk, color:Colors.blue)
                  ],
                )),
              ],
            ),
            */
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

