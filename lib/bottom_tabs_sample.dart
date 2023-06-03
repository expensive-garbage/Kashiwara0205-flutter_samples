import 'package:flutter/material.dart';

void main() {
  runApp(const BottomTabSample());
}

class BottomTabSample extends StatelessWidget {
  const BottomTabSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomTabSamplePage(
        title: "base_layout", message: "HelloFlutter!");
  }
}

class BottomTabSamplePage extends StatefulWidget {
  final String title;
  final String message;

  const BottomTabSamplePage(
      {super.key, required this.title, required this.message});

  @override
  State<BottomTabSamplePage> createState() => _BottomTabSamplePageState();
}

class _BottomTabSamplePageState extends State<BottomTabSamplePage>
    with SingleTickerProviderStateMixin {
  static const List<Tab> tabs = <Tab>[
    Tab(text: "1"),
    Tab(text: "2"),
    Tab(text: "3")
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyAPP"),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: TabBar(controller: _tabController, tabs: tabs),
      ),
      body: TabBarView(
          controller: _tabController,
          children: tabs.map((Tab tab) {
            return createTab(tab);
          }).toList()),
    );
  }

  Widget createTab(Tab tab) {
    return Center(
        child: Text(
      "This is ${tab.text} Tab.",
    ));
  }
}
