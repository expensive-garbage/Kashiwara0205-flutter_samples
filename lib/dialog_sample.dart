import 'package:flutter/material.dart';

void main() {
  runApp(const DialogSample());
}

class DialogSample extends StatelessWidget {
  const DialogSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const DialogSamplePage();
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

class DialogSamplePage extends StatefulWidget {
  const DialogSamplePage({super.key});

  @override
  State<DialogSamplePage> createState() => _DialogSamplePageState();
}

class _DialogSamplePageState extends State<DialogSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("data sample dart"),
        ),
        body: Column(
          children: [
            const Text(
              " This is dialog test",
              style: TextStyle(fontSize: 32.0),
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
        builder: (BuildContext context) => const AlertDialog(
              title: Text("Hello"),
              content: Text("This is sample;"),
            ));
  }
}
