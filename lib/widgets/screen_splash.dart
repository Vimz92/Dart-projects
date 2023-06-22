import 'package:crossroads/Screens/main_screen.dart';
import 'package:crossroads/Screens/profile_screen.dart';
import 'package:crossroads/Screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  int currentSelecteIndex = 0;

  final _pages = [
    const ScreenMain(),
    const ScreenProfile(),
    const ScreenSearch()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blue,
        currentIndex: currentSelecteIndex,
        onTap: (newIndex) {
          setState(() {
            currentSelecteIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
        ],
      ),
      drawer: MyDrawer(),
      body: Container(
        // color: Colors.red,
        child: _pages[currentSelecteIndex],
      ),
    );
  }
}
