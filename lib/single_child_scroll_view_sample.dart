import 'package:flutter/material.dart';

void main() {
  runApp(const SingleChildScrollViewSample());
}

class SingleChildScrollViewSample extends StatelessWidget {
  const SingleChildScrollViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollViewSamplePage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class SingleChildScrollViewSamplePage extends StatefulWidget {
  final String title;
  final String message;

  const SingleChildScrollViewSamplePage(
      {super.key, required this.title, required this.message});

  @override
  State<SingleChildScrollViewSamplePage> createState() =>
      _SingleChildScrollViewSamplePageState();
}

class _SingleChildScrollViewSamplePageState
    extends State<SingleChildScrollViewSamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.blue,
            height: 120,
            child: const Center(
                child: Text(
              "One",
              style: TextStyle(fontSize: 32),
            )),
          ),
          Container(
            color: Colors.blue,
            height: 120,
            child: const Center(
                child: Text(
              "One",
              style: TextStyle(fontSize: 32),
            )),
          ),
          Container(
            color: Colors.blue,
            height: 120,
            child: const Center(
                child: Text(
              "One",
              style: TextStyle(fontSize: 32),
            )),
          ),
          Container(
            color: Colors.blue,
            height: 120,
            child: const Center(
                child: Text(
              "One",
              style: TextStyle(fontSize: 32),
            )),
          ),
          Container(
            color: Colors.blue,
            height: 120,
            child: const Center(
                child: Text(
              "One",
              style: TextStyle(fontSize: 32),
            )),
          ),
          Container(
            color: Colors.blue,
            height: 120,
            child: const Center(
                child: Text(
              "One",
              style: TextStyle(fontSize: 32),
            )),
          ),
        ],
      )),
    );
  }
}
