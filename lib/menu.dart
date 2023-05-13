import 'package:flutter/material.dart';
import "demo.dart";
import 'hello_flutter.dart';
import "sample_message.dart";
import "floating_action_button_sample.dart";
import "data_sample.dart";
import "base_layout.dart";

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
  static const double _buttonWidth = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(_buttonWidth)),
                    key: null,
                    onPressed: onClickNextPage(const Demo()),
                    child: const Text("DEMO PAGE")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(_buttonWidth)),
                    key: null,
                    onPressed: onClickNextPage(const HelloFlutter()),
                    child: const Text("Hello flutter")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(_buttonWidth)),
                    key: null,
                    onPressed: onClickNextPage(const SampleMessage()),
                    child: const Text("SampleMessage")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(_buttonWidth)),
                    key: null,
                    onPressed:
                        onClickNextPage(const FloatingActionButtonSample()),
                    child: const Text("FloatingButtonSample")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(_buttonWidth)),
                    key: null,
                    onPressed: onClickNextPage(const DataSample()),
                    child: const Text("DataSample")),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size.fromWidth(_buttonWidth)),
                    key: null,
                    onPressed: onClickNextPage(const BaseLayout()),
                    child: const Text("LayoutSample")),
              ),
            ])));
  }

  void Function() onClickNextPage(page) {
    return () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    };
  }
}
