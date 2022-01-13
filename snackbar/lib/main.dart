import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';


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
    body: Center(
    child: RaisedButton(
            onPressed: () {
              Fluttertoast.showToast(
                msg: "My child born of war",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.lightGreen,
                textColor: Colors.white,
                gravity: ToastGravity.BOTTOM);
            },
      child: Text("Click"),
    ),
    ),
    );

  }
  }


/*
// Snackbar in flutter
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
      body: Center(
        child: Builder(
          builder: (BuildContext con) {
            return RaisedButton(
              onPressed: () {
                Scaffold.of(con).showSnackBar(SnackBar(
                  content: Text("Please enter your password to unlock"),
                  duration: Duration(seconds: 10),
                  action: SnackBarAction(label: "Ok", onPressed: () {},),
                ));
              },
              child: Text("Click"),
              color: Colors.yellow,
            );
          },
          ),
        ),

    );
  }
}

*/
