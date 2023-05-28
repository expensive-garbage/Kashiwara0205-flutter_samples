import 'package:flutter/material.dart';

void main() {
  runApp(const NavigatorSample());
}

class NavigatorSample extends StatelessWidget {
  const NavigatorSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const FirstScreen();
  }
}

class FirstScreen extends StatelessWidget{
   const FirstScreen({super.key});

 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(title: const Text('Home'),
     ),
     body: const Center(child: Text("Home Screen", style: TextStyle(fontSize: 28)),),
     bottomNavigationBar: BottomNavigationBar(currentIndex: 1, items: const [ 
       BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home, size: 32)),
       BottomNavigationBarItem(label: "Next", icon: Icon(Icons.next_plan, size: 32)),
        ],

      onTap: (int value)=>{
        if(value == 1){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()))
        }
      },
        
        ),
   );
 }
}



class SecondScreen extends StatelessWidget{
   const SecondScreen({super.key});

 @override
 Widget build(BuildContext context){
   return Scaffold(
     appBar: AppBar(title: const Text('Next'),
     ),
     body: const Center(child: Text("Next Screen", style: TextStyle(fontSize: 28)),),
     bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: const [ 
       BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home, size: 32)),
       BottomNavigationBarItem(label: "Next", icon: Icon(Icons.next_plan, size: 32)),
        ],

      onTap: (int value)=>{
        if(value == 0){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstScreen()))
        }
      },
        
        ),
   );
 }
}