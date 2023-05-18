import 'package:flutter/material.dart';

void main() {
  runApp(const SwitchSample());
}

class SwitchSample extends StatelessWidget {
  const SwitchSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SwitchSamplePage();
  }
}

class SwitchSamplePage extends StatefulWidget {
  const SwitchSamplePage({super.key});

  @override
  State<SwitchSamplePage> createState() => _SwitchSamplePageState();
}

class _SwitchSamplePageState extends State<SwitchSamplePage> {
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
            Switch(value: _checked, onChanged: checkChanged)
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
