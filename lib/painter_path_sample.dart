import 'package:flutter/material.dart';

void main() {
  runApp(const PainterPathSample());
}

class PainterPathSample extends StatelessWidget {
  const PainterPathSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterPathSamplePage();
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

class PainterPathSamplePage extends StatefulWidget {
  const PainterPathSamplePage({super.key});

  @override
  State<PainterPathSamplePage> createState() => _PainterPathSamplePageState();
}

class _PainterPathSamplePageState extends State<PainterPathSamplePage> {
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

    Paint p = Paint();

    p.color = Colors.blue;
    p.style = PaintingStyle.fill;
    canvas.drawPath(path, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
