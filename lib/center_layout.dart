import 'package:flutter/material.dart';

void main() {
  runApp(const CenterLayout());
}

class CenterLayout extends StatelessWidget {
  const CenterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenterLayoutPage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class CenterLayoutPage extends StatefulWidget {
  final String title;
  final String message;

  const CenterLayoutPage(
      {super.key, required this.title, required this.message});

  @override
  State<CenterLayoutPage> createState() => _CenterLayoutPageState();
}

class _CenterLayoutPageState extends State<CenterLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(115, 16, 36, 190),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Text(
          widget.message,
          style: const TextStyle(
              fontSize: 32.0,
              color: Color.fromARGB(115, 113, 242, 101),
              fontWeight: FontWeight.w700,
              fontFamily: "Roboto"),
        )));
  }
}
