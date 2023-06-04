
import 'package:flutter/material.dart';

void main() {
  runApp(const PainterValueNotifierSample());
}

class PainterValueNotifierSample extends StatelessWidget {
  const PainterValueNotifierSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterValueNotifierSamplePage();
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

class PainterValueNotifierSamplePage extends StatefulWidget {
  const PainterValueNotifierSamplePage({super.key});

  @override
  State<PainterValueNotifierSamplePage> createState() =>
      _PainterValueNotifierSamplePageState();
}

class _PainterValueNotifierSamplePageState
    extends State<PainterValueNotifierSamplePage> {
  static final ValueNotifier<int> _value = ValueNotifier<int>(0);

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
        body: Center(
            child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              width: 300,
              height: 300,
              child: CustomPaint(
                painter: MyPainter(_value),
                child: const Center(),
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            ElevatedButton(
                onPressed: () => _value.value++,
                child: const Text(
                  "Click me",
                  style: TextStyle(fontSize: 32),
                ))
          ],
        )));
  }
}

class MyPainter extends CustomPainter {
  final ValueNotifier<int> _value;

  MyPainter(this._value);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    p.style = PaintingStyle.fill;
    p.color = const Color.fromARGB(50, 0, 255, 255);
    Rect r;

    for (var i = 0; i < _value.value; i++) {
      r = Rect.fromLTWH(10 + i * 20, 10 + i * 20, 100, 100);
      canvas.drawRect(r, p);
    }

    r = Rect.fromLTWH(0, 0, size.width, size.height);
    p.style = PaintingStyle.stroke;
    p.color = Colors.red;
    canvas.drawRect(r, p);
    if (_value.value > 10) _value.value = 0;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
