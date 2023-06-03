import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const PainterTranslateSample());
}

class PainterTranslateSample extends StatelessWidget {
  const PainterTranslateSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterTranslateSamplePage();
  }
}

class Data {
  final int _price;
  final String _name;

  Data(this._name, this._price);

  @override
  String toString() {
    return '$_name : ${_price.toString()}円';
  }
}

class PainterTranslateSamplePage extends StatefulWidget {
  const PainterTranslateSamplePage({super.key});

  @override
  State<PainterTranslateSamplePage> createState() =>
      _PainterTranslateSamplePageState();
}

class _PainterTranslateSamplePageState
    extends State<PainterTranslateSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Container(
            color: Colors.white, child: CustomPaint(painter: MyPainter())));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Rect r = const Rect.fromLTWH(50, 50, 75, 75);
    path.addOval(r);

    r = const Rect.fromLTWH(75, 75, 125, 125);
    path.addOval(r);
    r = const Rect.fromLTWH(125, 125, 175, 175);
    path.addOval(r);

    canvas.save();

    Paint p = Paint();

    p.color = Colors.blue;
    p.style = PaintingStyle.fill;
    canvas.drawPath(path, p);

    canvas.translate(0, 100);
    p.color = Colors.red;
    canvas.drawPath(path, p);

    p.color = Colors.orange;
    canvas.rotate(-0.5 * math.pi);
    canvas.translate(-500, 50);
    canvas.scale(1 * 1.5);
    canvas.drawPath(path, p);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
