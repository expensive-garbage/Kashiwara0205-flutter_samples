import 'package:flutter/material.dart';
import 'dart:ui' as ui;

void main() {
  runApp(const PainterTextSample());
}

class PainterTextSample extends StatelessWidget {
  const PainterTextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterTextSamplePage();
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

class PainterTextSamplePage extends StatefulWidget {
  const PainterTextSamplePage({super.key});

  @override
  State<PainterTextSamplePage> createState() => _PainterTextSamplePageState();
}

class _PainterTextSamplePageState extends State<PainterTextSamplePage> {
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

    ui.ParagraphBuilder builder =
        ui.ParagraphBuilder(ui.ParagraphStyle(textDirection: TextDirection.ltr))
          ..pushStyle(ui.TextStyle(color: Colors.red, fontSize: 48))
          ..addText("Hello!")
          ..pushStyle(ui.TextStyle(color: Colors.blue, fontSize: 30))
          ..addText(("This is sample"));

    ui.Paragraph paragraph = builder.build()
      ..layout(const ui.ParagraphConstraints(width: 300));

    Offset off = const Offset(50, 50);

    canvas.drawParagraph(paragraph, off);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
