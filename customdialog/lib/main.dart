import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(onPressed: () {

          showDialog(context: context,
              builder: (context){

                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      overflow: Overflow.visible,
                      children: <Widget>[
                       Container(
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 50,
                              ),
                              new Text(
                                "Beautiful-Eminem",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                   color: Color(0xff070707),

                                ),
                              ),
                                SizedBox(
                                   height: 20,
                                ),
                            new Text(
                              "In my shoes, just to see \nWhat it's like to be me \nI'll be you, let's trade shoes \nJust to see what I'd be like to \nFeel your pain, you feel mine"
                              //\nGo inside each other's minds \nJust to see what we find \nLook at shit through each other's eyes"
                              //\nLately, I've been hard to reach \nI've been too long on my own \nEverybody has a private world"
                                  ,
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontSize: 18,
                                  color: Color(0xff070707),
                                ),
                            )

                            ],
                          ),
                        ),
                      ),
                        Positioned(
                          top: -50,
                            child: CircleAvatar(
                           radius: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                  child: Image.asset("image/christmas-g0c8f2513c_1920.jpg")),
                            )

                ),
                  ],
                    ),
                );
              });
        },
        child: Text("song lyric"),
        ),
        ),
      );

  }
}
