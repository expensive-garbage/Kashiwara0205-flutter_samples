import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerLayout());
}

class ContainerLayout extends StatelessWidget {
  const ContainerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ContainerLayoutPage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class ContainerLayoutPage extends StatefulWidget {
  final String title;
  final String message;

  const ContainerLayoutPage(
      {super.key, required this.title, required this.message});

  @override
  State<ContainerLayoutPage> createState() => _ContainerLayoutPageState();
}

class _ContainerLayoutPageState extends State<ContainerLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(115, 16, 36, 190),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.bottomCenter,
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
