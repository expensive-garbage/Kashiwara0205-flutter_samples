import 'package:flutter/material.dart';

void main(){
  runApp(const HelloFlutter());
}

class HelloFlutter extends StatelessWidget{
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("HelloFlutter"),
      ),
      body: const Text(
        "Hello, FlutterWorld!!",
        style: TextStyle(fontSize: 32.0),
      )
    );
  }
}
