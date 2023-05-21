import 'package:flutter/material.dart';

void main() {
  runApp(const PopupMenuButtonSample());
}

class PopupMenuButtonSample extends StatelessWidget {
  const PopupMenuButtonSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopupMenuButtonSamplePage();
  }
}

class PopupMenuButtonSamplePage extends StatefulWidget {
  const PopupMenuButtonSamplePage({super.key});

  @override
  State<PopupMenuButtonSamplePage> createState() =>
      _PopupMenuButtonSamplePageState();
}

class _PopupMenuButtonSamplePageState extends State<PopupMenuButtonSamplePage> {
  static var _message = "select: one";
  static var _selected = "one";

  static final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("dropdown btn example"),
        ),
        body: Column(
          children: [
            Text(
              _message,
              style: const TextStyle(fontSize: 32.0),
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _controller,
                  style: const TextStyle(
                      fontSize: 28,
                      color: Color(0xffEE0000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Roboto"),
                )),
            PopupMenuButton(
              initialValue: _selected,
              onSelected: checkChanged,
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                const PopupMenuItem(
                  value: "one",
                  child: Text('one'),
                ),
                const PopupMenuItem(
                  value: "two",
                  child: Text('two'),
                ),
                const PopupMenuItem(
                  value: "three",
                  child: Text('three'),
                ),
              ],
            ),
          ],
        ));
  }

  void checkChanged(value) {
    setState(() {
      _selected = value;
      _message = "select: $_selected";
    });
  }
}
