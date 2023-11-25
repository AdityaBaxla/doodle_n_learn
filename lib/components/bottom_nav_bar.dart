import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GNav(
            color: Colors.grey[200],
            activeColor: Colors.grey[900],
            tabs: const [
          GButton(
            icon: Icons.home,
            text: 'home',
          ),
          GButton(
            icon: Icons.play_circle,
            text: 'game',
          )
        ]));
  }
}
