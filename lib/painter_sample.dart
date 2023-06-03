import 'package:flutter/material.dart';

void main() {
  runApp(const PainterSample());
}

class PainterSample extends StatelessWidget {
  const PainterSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterSamplePage();
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

class PainterSamplePage extends StatefulWidget {
  const PainterSamplePage({super.key});

  @override
  State<PainterSamplePage> createState() => _PainterSamplePageState();
}

class _PainterSamplePageState extends State<PainterSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Container(color: Colors.white, child: CustomPaint(painter: MyPainter())));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();

    p.style = PaintingStyle.fill;
    p.color = Colors.red;
    Rect r = const Rect.fromLTWH(50, 50, 150, 150);
    canvas.drawRect(r, p);

    p.style = PaintingStyle.stroke;
    p.color = Colors.blue;
    r = const Rect.fromLTWH(100, 100, 150, 150);
    canvas.drawRect(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
