import 'package:flutter/material.dart';

void main() {
  runApp(const SampleMessage());
}

class SampleMessage extends StatelessWidget {
  const SampleMessage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const SampleMessagePage(title: "xxx", message: "hello");
  }
}

class SampleMessagePage extends StatefulWidget {
  final String title;
  final String message;

  const SampleMessagePage(
      {super.key, required this.title, required this.message});

  @override
  State<SampleMessagePage> createState() => _SampleMessagePageState();
}

class _SampleMessagePageState extends State<SampleMessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Text(
          widget.message,
          style: const TextStyle(fontSize: 32.0),
        ));
  }
}
