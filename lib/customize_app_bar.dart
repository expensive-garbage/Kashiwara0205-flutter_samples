import 'package:flutter/material.dart';

void main() {
  runApp(const CustomizeAppBar());
}

class CustomizeAppBar extends StatelessWidget {
  const CustomizeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomizeAppBarPage();
  }
}

class CustomizeAppBarPage extends StatefulWidget {
  const CustomizeAppBarPage({super.key});

  @override
  State<CustomizeAppBarPage> createState() => _CustomizeAppBarPageState();
}

class _CustomizeAppBarPageState extends State<CustomizeAppBarPage> {
  static var _message = 'ok';
  static var _stars = '◯◯◯◯◯';
  static var _star = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My APP"),
          leading: const BackButton(
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: iconPressedA,
              icon: const Icon(Icons.star),
              tooltip: 'add star...',
            ),
            IconButton(
              onPressed: iconPressedB,
              icon: const Icon(Icons.android),
              tooltip: 'subject star...',
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: Center(
                  child: Text(
                _stars,
                style: const TextStyle(fontSize: 20, color: Colors.amber),
              ))),
        ),
        body: Center(
          child: Text(_message, style: const TextStyle(fontSize: 28)),
        ));
  }

  void iconPressedA() {
    _message = 'tap "star"';
    _star++;
    update();
  }

  void iconPressedB() {
    _message = 'tap "android"';
    _star--;
    update();
  }

  void update() {
    _star = _star < 0
        ? 0
        : _star > 5
            ? 5
            : _star;
    setState(() {
      _stars = '●●●●●◯◯◯◯◯'.substring(5 - _star, 5 - _star + 5);
      _message = '$_message $_star';
    });
  }
}
