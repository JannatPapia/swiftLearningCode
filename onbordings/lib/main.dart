import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  int counter = 0;

  loadcounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
       setState(() {
         counter = pref.getInt("counter")??0;
       });
  }



  intrement() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
}
  @override

  void initState() {
    loadcounter();
    super.initState();
  }

Widget build(BuildContext context) {

    return Scaffold(
            appBar: AppBar(
              title: Text("Shared Preferences demo"),
              shadowColor: Colors.black,
backgroundColor: Colors.brown,
            ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
           Text('You have clicked $counter times',
             style: TextStyle(fontSize: 30),

           ),
          ],
        ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: intrement,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),

    );
  }
}







/*


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onbordings/home.dart';
import 'home.dart';
//import 'package:onbordings/home.dart';

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
    return IntroductionScreen(
                         pages: [
                           PageViewModel(
                             title: "First",
                             body: "This is our first Description",
                             image: Image.asset("images/hearts@2x.png", width: 350,),
                           ),

                           PageViewModel(
                             title: "Second",
                             body: "This is our first Description",
                             image: Image.asset("images/WhatsApp Image 2021-12-05 at 09.58.02.jpeg",width: 350,),
                           ),

                           PageViewModel(
                             title: "Third",
                             body: "This is our Third Description",
                             image: Image.network("https://image.freepik.com/free-photo/bright-dyes-mixing-water_23-2147763563.jpg", width: 350,),
                           ),

                           PageViewModel(
                             title: "Fourth",
                             body: "This is our Fourth Description",
                             image: Image.network("https://as2.ftcdn.net/v2/jpg/02/93/98/15/1000_F_293981560_mGqJG9Fs6DUDoDFi6mJZcS5EiWJnRw74.jpg", width: 350,),
                           ),

                           PageViewModel(
                             title: "Fifth",
                             body: "This is our Fifth Description",
                             image: Image.network("https://image.freepik.com/free-vector/frozen-motion-splash-crown-with-droplets-waves-calm-water-surface_33099-964.jpg", width: 350,),
                           ),

               /*            PageViewModel(
                             title: "Sixth",
                             body: "This is our Sixth Description",
                             image: Image.network("https://image.freepik.com/free-photo/penne-pasta-tomato-sauce-with-chicken-tomatoes-wooden-table_2829-19744.jpg", width: 350,),
                           ),

                           PageViewModel(
                             title: "7th",
                             body: "This is our 7th Description",
                             image: Image.network("https://image.freepik.com/free-photo/burger-with-flying-elements_147620-1942.jpg", width: 350,),
                           ),
*/
                         ],
      onDone: () {
                           Navigator.push(context, CupertinoPageRoute(builder: (context) => HomePage()));
      },
      done: Text("Done"),
      next: Text("next"),
      showSkipButton: true,
      skip: Text("Skip"),
      dotsDecorator: DotsDecorator(
        size: Size(10.0,10.0),
        color: Colors.black,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        )
      ),
    );
  }
}
*/