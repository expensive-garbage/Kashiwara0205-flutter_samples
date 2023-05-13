import 'package:flutter/material.dart';

void main() {
  runApp(const FloatingActionButtonSample());
}

class FloatingActionButtonSample extends StatelessWidget {
  const FloatingActionButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButtonSamplePage();
  }
}

class FloatingActionButtonSamplePage extends StatefulWidget {
  const FloatingActionButtonSamplePage({super.key});

  @override
  State<FloatingActionButtonSamplePage> createState() =>
      _FloatingActionButtonSamplePageState();
}

class _FloatingActionButtonSamplePageState
    extends State<FloatingActionButtonSamplePage> {
  String _message = "hello";

  void _setMessage() {
    setState(() {
      _message = "タップしました";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("floating action btn sample"),
      ),
      body: Text(
        _message,
        style: const TextStyle(fontSize: 32.0),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _setMessage,
          tooltip: 'set message',
          child: const Icon(Icons.star)),
    );
  }
}
