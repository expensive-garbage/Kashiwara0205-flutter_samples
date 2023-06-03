import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerSample());
}

class DrawerSample extends StatelessWidget {
  const DrawerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerSamplePage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class DrawerSamplePage extends StatefulWidget {
  final String title;
  final String message;

  const DrawerSamplePage(
      {super.key, required this.title, required this.message});

  @override
  State<DrawerSamplePage> createState() => _DrawerSamplePageState();
}

class _DrawerSamplePageState extends State<DrawerSamplePage> {
  static final _items = <Widget>[];
  static var _message = "ok.";
  static var _tapped = 0;

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < 5; i++) {
      var item = ListTile(
        leading: const Icon(Icons.android),
        title: Text('Np,$i'),
        onTap: () {
          _tapped = i;
          tapItem();
        },
      );

      _items.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(_message),
      ),
      drawer: Drawer(
          child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: _items,
      )),
    );
  }

  void tapItem() {
    Navigator.pop(context);
    setState(() {
      _message = "tapped:[$_tapped]";
    });
  }
}
