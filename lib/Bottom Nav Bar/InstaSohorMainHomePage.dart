import 'package:flutter/material.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/InstaHomePage.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/Post%20Add.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/ReelPage.dart';
import 'package:untitledsadfawdsfdfasdf/Bottom%20Nav%20Bar/SearchPage.dart';
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
    const InstaHomePage(),
    const InstaSearchPage(),
    const InstaPostAddPage(),
    const InstaReelPage(),
    ProfileGridViewPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentPage,
        onTap: _selectedPage,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home, size: 25,), label: "Home",),
          const BottomNavigationBarItem(icon: Icon(Icons.search, size: 25,), label: "Search",),
          const BottomNavigationBarItem(icon: Icon(Icons.add, size: 25,), label: "Add",),
          const BottomNavigationBarItem(icon: Icon(Icons.video_call, size: 25,), label: "Reel",),
          const BottomNavigationBarItem(icon: Icon(Icons.person, size: 25,), label: "Profile",),
        ],
      ),
    );
  }
}
