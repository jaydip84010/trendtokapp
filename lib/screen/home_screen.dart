import 'package:flutter/material.dart';
import 'package:trendtokapp/screen/homepage.dart';
import 'package:trendtokapp/screen/learn_screen.dart';
import 'package:trendtokapp/screen/saved_sound_page.dart';
import 'package:trendtokapp/screen/searchpage.dart';
import 'package:trendtokapp/screen/setting_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  final List<Widget> _pages = [
    HomePage(),
    SoundSearchScreen(),
    LearningCenter(),
    SavedSoundsScreen(),
    SettingsScreen(),
  ];

  void _onTabSelected(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          children: _pages,
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedFontSize: 14,
          unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 14),
          backgroundColor: Color(0xff292928),
          selectedItemColor: Colors.lightGreen,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: _onTabSelected,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Color(0xff292928),
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff292928),
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff292928),
              icon: Icon(Icons.school),
              label: 'Learn',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff292928),
              icon: Icon(Icons.bookmark),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              backgroundColor: Color(0xff292928),
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
