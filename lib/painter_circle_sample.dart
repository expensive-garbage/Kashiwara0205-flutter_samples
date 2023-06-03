import 'package:flutter/material.dart';

void main() {
  runApp(const PainterCircleSample());
}

class PainterCircleSample extends StatelessWidget {
  const PainterCircleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterCircleSamplePage();
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

class PainterCircleSamplePage extends StatefulWidget {
  const PainterCircleSamplePage({super.key});

  @override
  State<PainterCircleSamplePage> createState() =>
      _PainterCircleSamplePageState();
}

class _PainterCircleSamplePageState extends State<PainterCircleSamplePage> {
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
    Paint p = Paint();

    p.style = PaintingStyle.fill;
    p.color = Colors.red;
    Offset crt = const Offset(100, 100);
    canvas.drawCircle(crt, 75, p);

    p.style = PaintingStyle.stroke;
    p.color = Colors.blue;
    p.strokeWidth = 10;
    Rect r = const Rect.fromLTWH(100, 50, 200, 150);
    canvas.drawOval(r, p);

    r = const Rect.fromLTWH(50, 100, 150, 200);
    canvas.drawOval(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
