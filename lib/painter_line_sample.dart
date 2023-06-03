import 'package:flutter/material.dart';

void main() {
  runApp(const PainterLineSample());
}

class PainterLineSample extends StatelessWidget {
  const PainterLineSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterLineSamplePage();
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

class PainterLineSamplePage extends StatefulWidget {
  const PainterLineSamplePage({super.key});

  @override
  State<PainterLineSamplePage> createState() => _PainterLineSamplePageState();
}

class _PainterLineSamplePageState extends State<PainterLineSamplePage> {
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
    p.style = PaintingStyle.stroke;
    p.strokeWidth = 5;

    p.color = const Color.fromARGB(150, 0, 200, 255);

    for (var i = 0; i <= 10; i++) {
      Rect r = Rect.fromLTRB(50.0 + 20 * i, 50, 50, 250.0 - 20 * i);
      canvas.drawLine(r.topLeft, r.bottomRight, p);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
