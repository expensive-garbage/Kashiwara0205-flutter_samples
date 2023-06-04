import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationLeftToRightSample());
}

class AnimationLeftToRightSample extends StatelessWidget {
  const AnimationLeftToRightSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimationLeftToRightSamplePage();
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

class AnimationLeftToRightSamplePage extends StatefulWidget {
  const AnimationLeftToRightSamplePage({super.key});

  @override
  State<AnimationLeftToRightSamplePage> createState() =>
      _AnimationLeftToRightSamplePageState();
}

class _AnimationLeftToRightSamplePageState
    extends State<AnimationLeftToRightSamplePage> {
  bool flg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data sample dart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          AnimatedAlign(
            alignment: flg ? Alignment.topLeft : Alignment.topRight,
            duration: const Duration(seconds: 1),
            curve: Curves.linear,
            child: Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            flg = !flg;
          });
        },
        child: const Icon(Icons.star),
      ),
    );
  }
}
