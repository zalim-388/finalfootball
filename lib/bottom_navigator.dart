import 'package:finalfootball/Home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
   BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  static  TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[
           HomeScreen(),

    Text(
      'Index 1: Explore',
      style: optionStyle,
    ),
    Text(
      'Index 2: Standings',
      style: optionStyle,
    ),
    Text(
      'Index 3: profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        // ignore: prefer_const_literals_to_create_immutables
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.grey,size: 30,),
           label: 'Home',
            backgroundColor:  const Color.fromARGB(255, 24, 24, 41),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined,color: Colors.grey,size: 30,),
            label: 'Explore',
            backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.poll_outlined,color: Colors.grey,size: 30,),
            label: 'Standings',
            backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Colors.grey,size: 30,),
            label: 'Profile',
            backgroundColor: const Color.fromARGB(255, 24, 24, 41),
          ),
        ],
       currentIndex: _selectedIndex,
  selectedItemColor: Colors.blue.shade700, // Color for selected label
  unselectedItemColor: Colors.grey, // Color for unselected labels
  onTap: _onItemTapped,
      ),
    );
    
  }
}
