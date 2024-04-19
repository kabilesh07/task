import 'package:flutter/material.dart';
import '../constants/text.dart';
import '../tabs/tabone.dart';
import '../tabs/tabthree.dart';
import '../tabs/tabtwo.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Tab1(),
    Tab2(),
    Tab3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(thogr),
        backgroundColor: Colors.black,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildBottomNavBarItem(0, 'TAB 1'),
            _buildBottomNavBarItem(1, 'TAB 2'),
            _buildBottomNavBarItem(2, 'TAB 3'),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavBarItem(int index, String title) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _onItemTapped(index);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: _selectedIndex == index ? Colors.black : Colors.brown,
            borderRadius: BorderRadius.zero,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }}
