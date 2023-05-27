import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleDialogSample());
}

class SimpleDialogSample extends StatelessWidget {
  const SimpleDialogSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleDialogSamplePage();
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

class SimpleDialogSamplePage extends StatefulWidget {
  const SimpleDialogSamplePage({super.key});

  @override
  State<SimpleDialogSamplePage> createState() => _SimpleDialogSamplePageState();
}

class _SimpleDialogSamplePageState extends State<SimpleDialogSamplePage> {
  static var _message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Column(
          children: [
            Text(
              _message,
              style: const TextStyle(fontSize: 32.0),
            ),
            ElevatedButton(
              onPressed: onPushBtn,
              child: const Text(
                "Push me!",
                style: TextStyle(fontSize: 32.0),
              ),
            )
          ],
        ));
  }

  void onPushBtn() {
    showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text("Hello"),
              content: const Text("This is sample;"),
              actions: [
                SimpleDialogOption(
                    onPressed: () => Navigator.pop(context, "Cancel"),
                    child: const Text("Cancel")),
                SimpleDialogOption(
                    onPressed: () => Navigator.pop(context, "OK"),
                    child: const Text("OK"))
              ],
            )).then((value) => setMessage(value));
  }

  void setMessage(String? value) {
    final setValue = value ?? "screen touch";
    setState(() {
      _message = setValue;
    });
  }
}
