import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewSample());
}

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListViewSamplePage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class ListViewSamplePage extends StatefulWidget {
  final String title;
  final String message;

  const ListViewSamplePage(
      {super.key, required this.title, required this.message});

  @override
  State<ListViewSamplePage> createState() => _ListViewSamplePageState();
}

class _ListViewSamplePageState extends State<ListViewSamplePage> {
  static const _message = ".ok";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        const Text(_message, style: TextStyle(fontSize: 32)),
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: const [Text('First'), Text('Second'), Text("Third")],
        )
      ]),
    );
  }
}
