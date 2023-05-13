import 'package:flutter/material.dart';

void main() {
  runApp(const BaseLayout());
}

class BaseLayout extends StatelessWidget {
  const BaseLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayoutPage(title: "base_layout", message: "HelloFlutter!");
  }
}

class BaseLayoutPage extends StatefulWidget {
  final String title;
  final String message;

  const BaseLayoutPage({super.key, required this.title, required this.message});

  @override
  State<BaseLayoutPage> createState() => _BaseLayoutPageState();
}

class _BaseLayoutPageState extends State<BaseLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(115, 16, 36, 190),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Text(
          widget.message,
          style: const TextStyle(
              fontSize: 32.0,
              color: Color.fromARGB(115, 113, 242, 101),
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto"),
        ));
  }
}
