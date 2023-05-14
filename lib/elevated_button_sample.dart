import 'package:flutter/material.dart';

void main() {
  runApp(const ElevatedButtonSample());
}

class ElevatedButtonSample extends StatelessWidget {
  const ElevatedButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const ElevatedButtonSamplePage();
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

class ElevatedButtonSamplePage extends StatefulWidget {
  const ElevatedButtonSamplePage({super.key});

  @override
  State<ElevatedButtonSamplePage> createState() =>
      _ElevatedButtonSamplePageState();
}

class _ElevatedButtonSamplePageState extends State<ElevatedButtonSamplePage> {
  static final _data = [
    Data('apple', 200),
    Data('Orange', 150),
    Data('Peach', 300)
  ];

  Data _item = _data[0];

  void _setState() {
    setState(() {
      _item = (_data..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Column(
          children: [
            Text(
              _item.toString(),
              style: const TextStyle(fontSize: 32.0),
            ),
            ElevatedButton(
              onPressed: _setState,
              child: const Text(
                "Push me!",
                style: TextStyle(fontSize: 32.0),
              ),
            )
          ],
        ));
  }
}
