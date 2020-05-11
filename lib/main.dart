import 'package:flutter/material.dart';
import 'package:travelsystem_ui/second.dart';
// import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 18,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Container(
                  // height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/bg.jpeg"),
                          fit: BoxFit.fill)),
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 18,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0,
                        0.5,
                      ],
                      colors: [
                        Colors.blue,
                        Colors.lightGreen[400].withOpacity(0.3)
                        // Colors.purpleAccent,
                      ],
                    ))),
                Column(
                  children: <Widget>[
                    Text(
                      "Enjoy your every trip with us!",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 39, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MySecondPage()));
                      },
                      child: Container(
                          height: 60,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Text(
                            "Sign in",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Create an account",
                      style: TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
