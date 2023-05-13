import 'package:flutter/material.dart';
import "demo.dart";
import 'hello_flutter.dart';
import "sample_message.dart";
import "floating_action_button_sample.dart";

void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MenuPage(title: 'Select Sample');
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MenuPage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Container(
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    key: null,
                    onPressed: onClickDemo,
                    child: const Text("DEMO PAGE")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    key: null,
                    onPressed: onClickHelloFlutter,
                    child: const Text("Hello flutter")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    key: null,
                    onPressed: onClickSampleMessage,
                    child: const Text("SampleMessage")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    key: null,
                    onPressed: onClickFloatingActionButtonSample,
                    child: const Text("FloatingActionButtonSample")),
              ),
            ])));
  }

  void onClickDemo() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Demo()),
    );
  }

  void onClickHelloFlutter() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HelloFlutter()),
    );
  }

  void onClickSampleMessage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SampleMessage()),
    );
  }

  void onClickFloatingActionButtonSample() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const FloatingActionButtonSample()),
    );
  }
}
