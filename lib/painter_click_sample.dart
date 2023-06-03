import 'package:flutter/material.dart';

void main() {
  runApp(const PainterClickSample());
}

class PainterClickSample extends StatelessWidget {
  const PainterClickSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterClickSamplePage();
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

class PainterClickSamplePage extends StatefulWidget {
  const PainterClickSamplePage({super.key});

  @override
  State<PainterClickSamplePage> createState() => _PainterClickSamplePageState();
}

class _PainterClickSamplePageState extends State<PainterClickSamplePage> {
  static final List<Offset> _points = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Container(
            color: Colors.white,
            child: Listener(
              onPointerDown: _addPint,
              child: CustomPaint(
                  painter: MyPainter(_points), child: const Center()),
            )));
  }

  void _addPint(PointerDownEvent event) {
    setState(() {
      _points.add(event.localPosition);
    });
  }
}

class MyPainter extends CustomPainter {
  final List<Offset> _points;

  MyPainter(this._points);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();

    p.style = PaintingStyle.fill;
    p.color = const Color.fromARGB(100, 0, 200, 100);
    for (var pos in _points) {
      Rect r = Rect.fromLTWH(pos.dx - 25, pos.dy - 25, 50, 50);
      canvas.drawOval(r, p);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
