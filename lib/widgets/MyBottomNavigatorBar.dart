import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class MyBottomNavigatorBar extends StatefulWidget {
  const MyBottomNavigatorBar({super.key});

  @override
  State<MyBottomNavigatorBar> createState() => _MyBottomNavigatorBarState();
}

class _MyBottomNavigatorBarState extends State<MyBottomNavigatorBar> {
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  Color activeColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
      child: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        containerHeight: 50,
        selectedIndex: _currentIndex,
        showElevation: false,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.home_filled),
            title: const Text('Home'),
            activeColor: activeColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.donut_small_sharp),
            title: const Text('Search'),
            activeColor: activeColor,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            inactiveColor: Colors.black,
            icon: const Icon(Icons.person),
            title: const Text(
              'Profile ',
            ),
            activeColor: activeColor,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
