import 'package:flutter/material.dart';

void main() {
  runApp(const BottomuNavigationBar());
}

class BottomuNavigationBar extends StatelessWidget {
  const BottomuNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomuNavigationBarPage();
  }
}

class BottomuNavigationBarPage extends StatefulWidget {
  const BottomuNavigationBarPage({super.key});

  @override
  State<BottomuNavigationBarPage> createState() =>
      _BottomuNavigationBarPageState();
}

class _BottomuNavigationBarPageState extends State<BottomuNavigationBarPage> {
  static var _message = 'ok';
  static var _stars = '◯◯◯◯◯';
  static var _star = 0;
  static var _index = 0;

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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'Android',
              icon: Icon(Icons.android, color: Colors.black, size: 50)),
          BottomNavigationBarItem(
              label: 'Favorite',
              icon: Icon(Icons.android, color: Colors.red, size: 50)),
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.android, color: Colors.white, size: 50)),
        ],
        onTap: tapBottomIcon,
      ),
    );
  }

  void tapBottomIcon(int value) {
    var items = ["Android", "Favorite", "Home"];
    setState(() {
      _index = value;
      final tappedItem = items[_index];
      _message = 'you tapped: $tappedItem ';
    });
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
