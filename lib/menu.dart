import 'package:flutter/material.dart';
import "demo.dart";

void main() => runApp(const Menu());

class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MenuPage(title: 'Select Sample');
  }
}

class MenuPage extends StatefulWidget {
  const MenuPage({super.key, required this.title});

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MenuPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.center,
        child: 
          ElevatedButton(
            key:null, 
            onPressed:buttonPressed,
            child: const Text("DEMO PAGE")
          )
        )
      );
  }

  void buttonPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Demo()),
    );
  }
}
