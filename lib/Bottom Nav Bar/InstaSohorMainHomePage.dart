import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/InstaHomePage.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/ReelPage.dart';
import 'package:untitledsadfawdsfdfasdf/ProfilePages%20ui/ProfilePage.dart';

class InstaSohorMainHomePage extends StatefulWidget {
  const InstaSohorMainHomePage({Key? key}) : super(key: key);

  @override
  State<InstaSohorMainHomePage> createState() => _InstaSohorMainHomePageState();
}

class _InstaSohorMainHomePageState extends State<InstaSohorMainHomePage> {
  int _currentPage = 0;
  void _selectedPage(int index){
    setState(() {
      _currentPage = index;
    });
  }
  final List _pages = [
    InstaHomePage(),
    InstaReelPage(),
    ProfileGridViewPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _selectedPage,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home, size: 25,), label: "Home", backgroundColor: Colors.teal.shade100),
          BottomNavigationBarItem(icon: const Icon(Icons.list, size: 25,), label: "List", backgroundColor: Colors.teal.shade400),
          BottomNavigationBarItem(icon: const Icon(Icons.person, size: 25,), label: "Profile", backgroundColor: Colors.teal.shade800),
        ],
      ),
    );
  }
}
