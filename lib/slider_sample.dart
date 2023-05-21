import 'package:flutter/material.dart';

void main() {
  runApp(const SliderSample());
}

class SliderSample extends StatelessWidget {
  const SliderSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliderSamplePage();
  }
}

class SliderSamplePage extends StatefulWidget {
  const SliderSamplePage({super.key});

  @override
  State<SliderSamplePage> createState() => _SliderSamplePageState();
}

class _SliderSamplePageState extends State<SliderSamplePage> {
  static var _value = 0.0;
  static var _message = _value.toString();

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
            Slider(
              value: _value,
              onChanged: checkChanged,
              min: 0.0,
              max: 100.0,
              divisions: 20,
            )
          ],
        ));
  }

  void checkChanged(double? sliderValue) {
    setState(() {
      _value = sliderValue!;
      _message = _value.toString();
    });
  }
}
