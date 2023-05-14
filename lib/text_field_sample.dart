import 'package:flutter/material.dart';

void main() {
  runApp(const TextFieldSample());
}

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextFieldSamplePage();
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

class TextFieldSamplePage extends StatefulWidget {
  const TextFieldSamplePage({super.key});

  @override
  State<TextFieldSamplePage> createState() => _TextFieldSamplePageState();
}

class _TextFieldSamplePageState extends State<TextFieldSamplePage> {
  static var _message = "";
  static final _controller = TextEditingController();

  void _setState() {
    setState(() {
      _message = _controller.text;
    });
  }

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
                  controller: _controller,
                  style: const TextStyle(
                      fontSize: 28,
                      color: Color(0xffEE0000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
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
