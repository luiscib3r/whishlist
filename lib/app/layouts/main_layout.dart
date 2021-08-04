import 'package:flutter/material.dart';
import 'package:whishlist/app/constants.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({
    Key? key,
    required this.children,
    required this.tabs,
  }) : super(key: key);

  final List<Widget> children;
  final List<BottomNavigationBarItem> tabs;

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: widget.children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        items: widget.tabs,
        selectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
    );
  }
}
