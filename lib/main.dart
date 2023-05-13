import 'package:flutter/material.dart';
import 'menu.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Menu(),
      },
    );
  }
}
