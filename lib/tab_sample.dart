import 'package:flutter/material.dart';

void main() {
  runApp(const TabSample());
}

class TabSample extends StatelessWidget {
  const TabSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabSamplePage(title: "base_layout", message: "HelloFlutter!");
  }
}

class TabSamplePage extends StatefulWidget {
  final String title;
  final String message;

  const TabSamplePage({super.key, required this.title, required this.message});

  @override
  State<TabSamplePage> createState() => _TabSamplePageState();
}

class _TabSamplePageState extends State<TabSamplePage>  with SingleTickerProviderStateMixin{

    static const List<Tab> tabs = <Tab>[
      Tab(text: "1"),
      Tab(text: "2"),
      Tab(text: "3")
    ];

    late TabController _tabController;

    @override
    void initState(){
      super.initState();
      _tabController = TabController(length: tabs.length, vsync: this);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyAPP"),
        bottom: TabBar(controller: _tabController, tabs: tabs),
      ),

      body: TabBarView(
        controller: _tabController,
        children: tabs.map((Tab tab){
          return createTab(tab);
        }).toList()
      ),
    );
  }

  Widget createTab(Tab tab){
    return Center(
      child: Text(
        "This is ${tab.text} Tab.",
      )
    );
  }
}
