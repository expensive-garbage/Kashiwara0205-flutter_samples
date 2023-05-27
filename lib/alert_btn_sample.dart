import 'package:flutter/material.dart';

void main() {
  runApp(const AlertDialogSample());
}

class AlertDialogSample extends StatelessWidget {
  const AlertDialogSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialogSamplePage();
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

class AlertDialogSamplePage extends StatefulWidget {
  const AlertDialogSamplePage({super.key});

  @override
  State<AlertDialogSamplePage> createState() => _AlertDialogSamplePageState();
}

class _AlertDialogSamplePageState extends State<AlertDialogSamplePage> {
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
                TextButton(
                    onPressed: () => Navigator.pop(context, "Cancel"),
                    child: const Text("Cancel")),
                TextButton(
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
