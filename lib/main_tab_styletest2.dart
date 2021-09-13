import 'package:flutter/material.dart';

void main() => runApp(MyApp());
// --no-sound-null-safety

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabNavi(),
    );
  }
}

class TabNavi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int tabCnt = 3;
    double tabW = (MediaQuery.of(context).size.width - 40)/tabCnt;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.transparent;
      }
      return Colors.transparent;
    }

    return MaterialApp(
      home: DefaultTabController(
        length: tabCnt,
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
              onTap: (int index){
                print('test sinae');
              },
              unselectedLabelColor: Colors.black54,
              isScrollable: true,
              labelColor: Colors.black87,
              labelStyle: TextStyle(fontWeight: FontWeight.w600, decoration: TextDecoration.underline),
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, decoration: TextDecoration.none),
              overlayColor: MaterialStateProperty.resolveWith(getColor),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 0,
              labelPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //color: Colors.red,
              ),
              tabs: [
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    width: tabW,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.zero,
                        ),
                        border: Border.all(color: Color(0xFFdfdfdf), width: 1)
                    ),
                    transform: Matrix4.translationValues(0.0, -6.0, 0.0),
                    child: Text("탭메뉴song1",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    width: tabW,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Color(0xFFdfdfdf), width: 1.0),
                            bottom: BorderSide(color: Color(0xFFdfdfdf), width: 1.0)
                        ),
                    ),
                    transform: Matrix4.translationValues(0.0, -6.0, 0.0),
                    child: Text("Menu2",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    width: tabW,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(12),
                        ),
                        border: Border.all(color: Color(0xFFdfdfdf), width: 1)
                    ),
                    transform: Matrix4.translationValues(0.0, -6.0, 0.0),
                    child: Text("Menu3",
                      style: TextStyle(
                        fontSize: 13,
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

