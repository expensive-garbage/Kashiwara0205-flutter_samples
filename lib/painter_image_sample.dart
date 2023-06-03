import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

void main() {
  runApp(const PainterImageSample());
}

class PainterImageSample extends StatelessWidget {
  const PainterImageSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PainterImageSamplePage();
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

class PainterImageSamplePage extends StatefulWidget {
  const PainterImageSamplePage({super.key});

  @override
  State<PainterImageSamplePage> createState() => _PainterImageSamplePageState();
}

class _PainterImageSamplePageState extends State<PainterImageSamplePage> {
  static ui.Image? _img;
  static bool _flg = false;

  Future loadAssetsImage(String fname) async {
    final bd = await rootBundle.load("assets/images/$fname");
    final Uint8List u8lst = Uint8List.view(bd.buffer);
    final codec = await ui.instantiateImageCodec(u8lst);
    final frameInfo = await codec.getNextFrame();
    _img = frameInfo.image;
    setState(() {
      _flg = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    loadAssetsImage("sample_cat.jpeg");

    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Container(
            color: Colors.white, child: CustomPaint(painter: MyPainter(_img))));
  }
}

class MyPainter extends CustomPainter {
  final ui.Image? _img;

  MyPainter(this._img);

  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();

    Offset off = const Offset(50, 50);
    if (_img != null) {
      canvas.drawImage(_img!, off, p);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
