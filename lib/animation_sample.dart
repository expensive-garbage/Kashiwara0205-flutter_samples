import 'package:flutter/material.dart';
import "dart:math" as math;

void main() {
  runApp(const AnimationSample());
}

class AnimationSample extends StatelessWidget {
  const AnimationSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimationSamplePage();
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

class AnimationSamplePage extends StatefulWidget {
  const AnimationSamplePage({super.key});

  @override
  State<AnimationSamplePage> createState() => _AnimationSamplePageState();
}

class _AnimationSamplePageState extends State<AnimationSamplePage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);

    animation = Tween<double>(begin: 0, end: math.pi * 2).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.repeat(reverse: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Center(
            child: Column(children: [
          const Padding(padding: EdgeInsets.all(10)),
          SizedBox(
            width: 300,
            height: 300,
            child: CustomPaint(
              painter: MyPainter(animation.value),
              child: const Center(),
            ),
          ),
        ])));
  }
}

class MyPainter extends CustomPainter {
  final double value;

  MyPainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    canvas.save();

    p.style = PaintingStyle.fill;
    p.color = Colors.red;
    Rect r = const Rect.fromLTWH(0, 0, 250, 250);
    canvas.translate(150, 200);
    canvas.rotate(value);
    canvas.translate(-125, -125);
    canvas.drawRect(r, p);

    canvas.restore();
    p.style = PaintingStyle.stroke;
    p.strokeWidth = 25;
    p.color = Colors.blue;
    r = const Rect.fromLTWH(100, 0, 250, 250);
    canvas.translate(150, 250);
    canvas.rotate(value * -1);
    canvas.translate(-125, -125);
    canvas.drawRect(r, p);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
