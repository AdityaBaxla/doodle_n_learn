import 'package:doodle_n_learn/components/bottom_nav_bar.dart';
import 'package:doodle_n_learn/components/side_bar.dart';
import 'package:doodle_n_learn/pages/game_page.dart';
import 'package:doodle_n_learn/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // upadate selected index when user presses button
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const GamePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Doodle n Learn",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      drawer: const SideBar(),
    );
  }
}
