import 'package:flutter/material.dart';

void main() {
  runApp(const IconButtonSample());
}

class IconButtonSample extends StatelessWidget {
  const IconButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const IconButtonSamplePage();
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

class IconButtonSamplePage extends StatefulWidget {
  const IconButtonSamplePage({super.key});

  @override
  State<IconButtonSamplePage> createState() => _IconButtonSamplePageState();
}

class _IconButtonSamplePageState extends State<IconButtonSamplePage> {
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
            IconButton(
                onPressed: _setState,
                icon: const Icon(
                  Icons.abc_outlined,
                ),
                iconSize: 100,
                color: Colors.red)
          ],
        ));
  }
}
