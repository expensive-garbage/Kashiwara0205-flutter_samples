import 'package:flutter/material.dart';

void main() {
  runApp(const DataSample());
}

class DataSample extends StatelessWidget {
  const DataSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const DataSamplePage();
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

class DataSamplePage extends StatefulWidget {
  const DataSamplePage({super.key});

  @override
  State<DataSamplePage> createState() => _DataSamplePageState();
}

class _DataSamplePageState extends State<DataSamplePage> {
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
      body: Text(
        _item.toString(),
        style: const TextStyle(fontSize: 32.0),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _setState,
          tooltip: 'set message',
          child: const Icon(Icons.star)),
    );
  }
}
