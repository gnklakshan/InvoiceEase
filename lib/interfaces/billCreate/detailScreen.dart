import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 184, 137, 245),
          title: Text(
            "Details ",
            style: TextStyle(color: Colors.black26),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                child: Center(
                  child: CustomPaint(
                    size: Size(double.infinity, 400),
                    painter: CurvedPainter(),
                  ),
                ),
              ),
              const Column(
                children: [
                  Text(
                    "Details ",
                    style: TextStyle(color: Colors.black26),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    "Details ",
                    style: TextStyle(color: Colors.black26),
                  ),
                  //Container(color: Colors.black,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 184, 137, 245)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0041667, size.height * -0.0018750);
    path_0.lineTo(size.width * 1.0120833, size.height * -0.0055000);
    path_0.lineTo(size.width * 1.0150000, size.height * 0.0021875);
    path_0.lineTo(size.width * 1.0095000, size.height * 0.2418125);
    path_0.quadraticBezierTo(size.width * 0.8271875, size.height * 0.3646094,
        size.width * 0.5070833, size.height * 0.3818750);
    path_0.quadraticBezierTo(size.width * 0.2212500, size.height * 0.3793750,
        size.width * -0.0042500, size.height * 0.2316250);
    path_0.lineTo(size.width * -0.0041667, size.height * -0.0018750);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(11, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
