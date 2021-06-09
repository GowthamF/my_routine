import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.paid), label: 'Expenses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'Workouts'),
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Todo'),
          BottomNavigationBarItem(icon: Icon(Icons.assessment), label: 'Stats')
        ],
      ),
    );
  }
}
