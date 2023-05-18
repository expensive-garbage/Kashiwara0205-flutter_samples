import 'package:flutter/material.dart';

void main() {
  runApp(const CheckboxSample());
}

class CheckboxSample extends StatelessWidget {
  const CheckboxSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const CheckboxSamplePage();
  }
}

class CheckboxSamplePage extends StatefulWidget {
  const CheckboxSamplePage({super.key});

  @override
  State<CheckboxSamplePage> createState() => _CheckboxSamplePageState();
}

class _CheckboxSamplePageState extends State<CheckboxSamplePage> {
  static var _message = "not checked...";
  static var _checked = false;

  static final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("text filed sample"),
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
            Checkbox(value: _checked, onChanged: checkChanged)
          ],
        ));
  }

  void checkChanged(bool? value) {
    setState(() {
      _checked = value!;
      _message = value ? 'checked' : "not checked...";
    });
  }
}
