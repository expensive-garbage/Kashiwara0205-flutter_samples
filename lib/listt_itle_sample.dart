import 'package:flutter/material.dart';

void main() {
  runApp(const ListTitleSample());
}

class ListTitleSample extends StatelessWidget {
  const ListTitleSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTitleSamplePage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class ListTitleSamplePage extends StatefulWidget {
  final String title;
  final String message;

  const ListTitleSamplePage(
      {super.key, required this.title, required this.message});

  @override
  State<ListTitleSamplePage> createState() => _ListTitleSamplePageState();
}

class _ListTitleSamplePageState extends State<ListTitleSamplePage> {
  static var _message = ".ok";
  static var _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Text(_message, style: const TextStyle(fontSize: 32)),
        ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: [
            ListTile(
              leading: const Icon(Icons.android, size:32),
              title:  const Text('first item', style: TextStyle(fontSize: 28)),
              selected: _index == 1,
              onTap: (){
                _index = 1;
                tapTitle();
              },
            ),
            
ListTile(
              leading: const Icon(Icons.android, size:32),
              title:  const Text('sconed item', style: TextStyle(fontSize: 28)),
              selected: _index == 2,
              onTap: (){
                _index = 2;
                tapTitle();
              },




              
            ),


ListTile(
              leading: const Icon(Icons.android, size:32),
              title:  const Text('third item', style: TextStyle(fontSize: 28)),
              selected: _index == 3,
              onTap: (){
                _index = 3;
                tapTitle();
              },




              
            ),


          ],
        )
      ]),
    );
  }

  void tapTitle(){
    setState(() {
      _message = 'you tapped $_index';
    });
  }

}
