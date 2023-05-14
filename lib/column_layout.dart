import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnLayout());
}

class ColumnLayout extends StatelessWidget {
  const ColumnLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnLayoutPage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class ColumnLayoutPage extends StatefulWidget {
  final String title;
  final String message;

  const ColumnLayoutPage(
      {super.key, required this.title, required this.message});

  @override
  State<ColumnLayoutPage> createState() => _ColumnLayoutPageState();
}

class _ColumnLayoutPageState extends State<ColumnLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(115, 16, 36, 190),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(children: [
          Text(
            widget.message,
            style: const TextStyle(
                fontSize: 32.0,
                color: Color.fromARGB(115, 113, 242, 101),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
          const Text(
            "xxxx",
            style: TextStyle(
                fontSize: 32.0,
                color: Color.fromARGB(115, 113, 242, 101),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
          const Text(
            "xxxx2",
            style: TextStyle(
                fontSize: 32.0,
                color: Color.fromARGB(115, 113, 242, 101),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto"),
          ),
        ]));
  }
}
