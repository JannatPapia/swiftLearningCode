import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transform/first.dart';
import 'package:transform/five.dart';
import 'package:transform/four.dart';
import 'package:transform/second.dart';
import 'package:transform/six.dart';
import 'package:transform/three.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final pages=[
    One(),
    Two(),
    Three(),
    Four(),
    Five(),
    Six(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Row(
            children: <Widget>[
              NavigationRail(
               // extended: true,
                labelType: NavigationRailLabelType.all,
                  selectedLabelTextStyle: TextStyle(fontSize: 10),
                  destinations: [
          NavigationRailDestination(
              icon: Icon(Icons.star_border,
             color: Colors.green,
          ),
        label: Text("Star"),
        selectedIcon: Icon(Icons.star,color: Colors.blue,),
      ),

              NavigationRailDestination(
                icon: Icon(Icons.favorite,
                  color: Colors.red,
                ),
                label: Text("Favorite"),
                selectedIcon: Icon(Icons.favorite,color: Colors.pink,),

              ),
                NavigationRailDestination(
                  icon: Icon(Icons.lock_outline_rounded,
                    color: Colors.black,
                  ),
                  label: Text("Lock"),
                  selectedIcon: Icon(Icons.lock_outline_rounded,color: Colors.redAccent,),

                ),

                    NavigationRailDestination(
                      icon: Icon(Icons.wifi,
                        color: Colors.black,
                      ),
                      label: Text("Wi-fi"),
                      selectedIcon: Icon(Icons.wifi,color: Colors.blue,),

                    ),

                    NavigationRailDestination(
                      icon: Icon(Icons.search,
                        color: Colors.green,
                      ),
                      label: Text("search"),
                      selectedIcon: Icon(Icons.search,color: Colors.black,),

                    ),

                    NavigationRailDestination(
                      icon: Icon(Icons.lock_clock,
                        color: Colors.black,
                      ),
                      label: Text("clock"),
                      selectedIcon: Icon(Icons.lock_clock,color: Colors.orangeAccent,),

                    ),

                  ],
                selectedIndex: _selectedIndex,
                onDestinationSelected: (val){
                    setState(() {
                      _selectedIndex=val;
                    });
                },
                backgroundColor: Colors.yellow,
              ),
                Expanded(
                  child: Container(
                          child: pages[_selectedIndex],
                  ) ,)

            ],
          ),
      ),
    );
  }
}






/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
             title: Text("Name of students"),
         backgroundColor: Colors.green,
       ),
      body: Center(
          child: DataTable(
            headingRowHeight: 80,
            columns: [
            DataColumn(label: Text("Name"),tooltip: "Name"),
            DataColumn(label: Text("Age"),tooltip: "Age"),
            DataColumn(label: Text("Gender"),tooltip: "Gender"),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text("Nazmul")),
              DataCell(Text("27")),
              DataCell(Text("Male")),
            ]),

            DataRow(cells: [
            DataCell(Text("Papia")),
            DataCell(Text("21")),
            DataCell(Text("Female")),
          ]),

            DataRow(cells: [
              DataCell(Text("Elma")),
              DataCell(Text("25")),
              DataCell(Text("Female")),
            ]),

            DataRow(cells: [
              DataCell(Text("Parvez")),
              DataCell(Text("35")),
              DataCell(Text("Male")),
            ]),

          ],
          ),
      ),
    );
    }
}
*/







/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Transform.rotate(
            angle: pi/4,
             child: Container(
               height: 150,
               width: 150,
               color: Colors.grey,
             ),
          ),
        ),
      ),
    );
  }
}
*/

