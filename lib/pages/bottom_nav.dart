import 'package:bookworld/pages/download.dart';
import 'package:bookworld/pages/home.dart';
import 'package:bookworld/pages/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'saved_books.dart';

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

  List<Widget> screens = const [
    HomePage(),
    SearchPage(),
    // SavedBooks(),
    DownloadPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 1, 0, 8),
          //backgroundColor: Colors.blue,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.grey[200],
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  size: 20,
                ),
                label: 'Home'),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       FontAwesomeIcons.search,
            //       size: 20,
            //     ),
            //     label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  size: 20,
                ),
                label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.download,
                  size: 20,
                ),
                label: 'Download'),
          ]),
    );
  }
}
