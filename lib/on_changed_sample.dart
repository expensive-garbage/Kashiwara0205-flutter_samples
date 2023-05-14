import 'package:flutter/material.dart';

void main() {
  runApp(const OnChangedSample());
}

class OnChangedSample extends StatelessWidget {
  const OnChangedSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnChangedSamplePage();
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

class OnChangedSamplePage extends StatefulWidget {
  const OnChangedSamplePage({super.key});

  @override
  State<OnChangedSamplePage> createState() => _OnChangedSamplePageState();
}

class _OnChangedSamplePageState extends State<OnChangedSamplePage> {
  static var _message = "";
  static final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("text filed sample"),
        ),
        body: Column(
          children: [
            Text(
              _message,
              style: const TextStyle(fontSize: 32.0),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  onChanged: textChanged,
                  controller: _controller,
                  style: const TextStyle(
                      fontSize: 28,
                      color: Color(0xffEE0000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
          ],
        ));
  }

  void textChanged(String val) {
    setState(() {
      _message = val.toUpperCase();
    });
  }
}
