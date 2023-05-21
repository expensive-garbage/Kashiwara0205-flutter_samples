import 'package:flutter/material.dart';

void main() {
  runApp(const RadioBtnSample());
}

class RadioBtnSample extends StatelessWidget {
  const RadioBtnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const RadioBtnSamplePage();
  }
}

class RadioBtnSamplePage extends StatefulWidget {
  const RadioBtnSamplePage({super.key});

  @override
  State<RadioBtnSamplePage> createState() => _RadioBtnSamplePageState();
}

class _RadioBtnSamplePageState extends State<RadioBtnSamplePage> {
  static var _message = "select: A";
  static var _selected = "A";

  static final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("radio btn example"),
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
            const Text(
              "radio A",
            ),
            Radio<String>(value: 'A', groupValue: _selected, onChanged: checkChanged,),
            const Text(
              "radio B",
            ),
            Radio<String>(value: 'B', groupValue: _selected, onChanged: checkChanged,)
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
