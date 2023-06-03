import 'package:flutter/material.dart';

void main() {
  runApp(const PassValueSample());
}

class PassValueSample extends StatelessWidget {
  const PassValueSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstScreen();
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  static final _controller = TextEditingController();
  static var _input = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          const Text("Home Screen", style: TextStyle(fontSize: 28)),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: _controller,
              style: const TextStyle(fontSize: 28),
              onChanged: onChangeField,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home, size: 32)),
          BottomNavigationBarItem(
              label: "Next", icon: Icon(Icons.next_plan, size: 32)),
        ],
        onTap: (int value) => {
          if (value == 1)
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(value: _input)))
            }
        },
      ),
    );
  }

  void onChangeField(String val) => _input = val;
}

class SecondScreen extends StatelessWidget {
  final String value;
  const SecondScreen({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next'),
      ),
      body: Center(
        child: Text(value, style: const TextStyle(fontSize: 28)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              label: "Home", icon: Icon(Icons.home, size: 32)),
          BottomNavigationBarItem(
              label: "Next", icon: Icon(Icons.next_plan, size: 32)),
        ],
        onTap: (int value) => {
          if (value == 0)
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FirstScreen()))
            }
        },
      ),
    );
  }
}
