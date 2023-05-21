import 'package:flutter/material.dart';

void main() {
  runApp(const DropdownBtnSample());
}

class DropdownBtnSample extends StatelessWidget {
  const DropdownBtnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const DropdownBtnSamplePage();
  }
}

class DropdownBtnSamplePage extends StatefulWidget {
  const DropdownBtnSamplePage({super.key});

  @override
  State<DropdownBtnSamplePage> createState() => _DropdownBtnSamplePageState();
}

class _DropdownBtnSamplePageState extends State<DropdownBtnSamplePage> {
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
            DropdownButton(items: const [
              DropdownMenuItem(value: 'one', child: Text("one")),
              DropdownMenuItem(value: 'two', child: Text("two")),
            ], onChanged: checkChanged, value: _selected)
          ],
        ));
  }

  void checkChanged(String? value) {
    setState(() {
      _selected = value!;
      _message = "select: $_selected";
    });
  }
}
