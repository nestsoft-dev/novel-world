import 'package:bookworld/pages/download.dart';
import 'package:bookworld/pages/home.dart';
import 'package:bookworld/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> screens = [HomePage(), SearchPage(), DownloadPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gamepad), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gamepad), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gamepad), label: 'Download'),
      ]),
    );
  }
}
