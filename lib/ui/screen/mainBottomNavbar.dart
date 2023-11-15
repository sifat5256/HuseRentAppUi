
import 'package:flutter/material.dart';
import 'package:renthvaen/ui/screen/canceltaskScreen.dart';
import 'package:renthvaen/ui/screen/completedTaskScreen.dart';
import 'package:renthvaen/ui/screen/newTaskScreen.dart';
import 'package:renthvaen/ui/screen/progresstaskScreen.dart';


class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex=0;
  final List<Widget> _screens=const [
    NewTaskScreen(),
    ProgreessTaskScreen(),
    CanceldTaskScreen(),
    CompletedTaskScreen()

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_selectedIndex ,
        onTap: (index){
          _selectedIndex=index;
          setState(() {

          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.abc) ,label:'New' ),
          BottomNavigationBarItem(icon:Icon(Icons.task) ,label:'Progress' ),


          BottomNavigationBarItem(icon:Icon(Icons.close) ,label:'Cancel' ),
          BottomNavigationBarItem(icon:Icon(Icons.done) ,label:'Completed' ),
        ],

      ),
    );
  }
}
