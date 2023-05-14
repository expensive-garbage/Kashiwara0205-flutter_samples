import 'package:flutter/material.dart';

void main() {
  runApp(const RowLayout());
}

class RowLayout extends StatelessWidget {
  const RowLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const RowLayoutPage(title: "base_layout", message: "HelloFlutter!");
  }
}

class RowLayoutPage extends StatefulWidget {
  final String title;
  final String message;

  const RowLayoutPage({super.key, required this.title, required this.message});

  @override
  State<RowLayoutPage> createState() => _RowLayoutPageState();
}

class _RowLayoutPageState extends State<RowLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(115, 16, 36, 190),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(children: [
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
