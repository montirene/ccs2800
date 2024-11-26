import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddHomeScreen(),
    );
  }
}

class AddHomeScreen extends StatefulWidget {
  const AddHomeScreen({Key? key}) : super(key: key);

  @override
  _AddHomeScreenState createState() => _AddHomeScreenState();
}

class _AddHomeScreenState extends State<AddHomeScreen> {
  int _currentIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings),
          Icon(Icons.notifications),
          Icon(Icons.person),
        ],
        iconTheme: IconThemeData(color: Colors.pink),
      ),
      body: _screens[_currentIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Education'.toUpperCase(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Work'.toLowerCase(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Skills'.toUpperCase(),
          ),
        ],
      ),
    );
  }
}

// Screen 1 with cards
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Card(
              elevation: 10,
              child: Container(
                height: 300,
                width: 300,
                child: Center(
                  child: Text(
                    'Image 1'.toUpperCase(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              elevation: 10,
              child: Container(
                height: 300,
                width: 300,
                child: Center(
                  child: Text(
                    'Image 2'.toUpperCase(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              elevation: 10,
              child: Container(
                height: 300,
                width: 300,
                child: Center(
                  child: Text(
                    'Image 3'.toUpperCase(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Screen 2 with simple text
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the Work Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Screen 3 with simple text
class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is the Skills Screen',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
