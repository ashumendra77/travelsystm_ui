import 'package:flutter/material.dart';
import 'dart:math';
// import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double pi = 22 / 1260;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                width: double.infinity,
                child: CustomPaint(
                  painter: CustomWave(),
                )),
            Positioned.directional(
              top: 115,
              start: 60,
              textDirection: TextDirection.ltr,
              child: Container(
                  // color: Colors.red,
                  child: Transform.rotate(
                angle: 520.19,
                child: Icon(
                  Icons.airplanemode_active,
                  color: Colors.white,
                  size: 50,
                ),
              )),
            )
          ],
        ));
  }
}

class CustomWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();
    // var center =Offset(size.width /5, size.height /7);
    //  var rect=Rect.fromLTRB(100, 200, 300, 500);
    paint.color = Colors.white;

    path.moveTo(100, 146);
    //  path.lineTo(95, 145);
    //  path.lineTo(size.width*0.99, size.height*0.30);
    // path.moveTo(100, size.height * 0.22);
    path.quadraticBezierTo(
        size.width, size.height - 440, size.width, size.height - 480);
    path.quadraticBezierTo(
        size.width, size.height - 90, size.width, size.height - 420);
    //  path.lineTo(size.width, size.height/3);
    // path.lineTo(size.width,size.height/5);

    path.close();
    canvas.drawPath(path, paint);
    // canvas.drawCircle(center, 20, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
