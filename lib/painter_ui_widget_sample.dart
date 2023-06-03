import 'package:flutter/material.dart';

void main() {
  runApp(const PainterUiWidgetSample());
}

class PainterUiWidgetSample extends StatelessWidget {
  const PainterUiWidgetSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterUiWidgetSamplePage();
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

class PainterUiWidgetSamplePage extends StatefulWidget {
  const PainterUiWidgetSamplePage({super.key});

  @override
  State<PainterUiWidgetSamplePage> createState() =>
      _PainterUiWidgetSamplePageState();
}

class _PainterUiWidgetSamplePageState extends State<PainterUiWidgetSamplePage> {
  static double _value = 0;
  static double _opaq = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: 300,
              height: 300,
              child: CustomPaint(
                painter: MyPainter(_value, _opaq.toInt()),
                child: const Center(),
              ),
            ),
            Slider(min: 0, max: 300, value: _value, onChanged: _changeVal),
            Slider(min: 0, max: 255, value: _opaq, onChanged: _changeOpaq),
          ],
        ));
  }

  void _changeVal(double value) {
    setState(() {
      _value = value;
    });
  }

  void _changeOpaq(double value) {
    setState(() {
      _opaq = value;
    });
  }
}

class MyPainter extends CustomPainter {
  final double _value;
  final int _opaq;

  MyPainter(this._value, this._opaq);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();

    p.style = PaintingStyle.fill;
    p.color = Colors.red;
    Rect r = Rect.fromLTWH(
        (size.width - _value) / 2, (size.width - _opaq) / 2, _value, _value);

    canvas.drawOval(r, p);

    r = Rect.fromLTWH(0, 0, size.width, size.height);
    p.style = PaintingStyle.stroke;
    p.color = const Color.fromARGB(255, 100, 100, 100);
    canvas.drawRect(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
