import 'package:doodle_n_learn/pages/home_page.dart';
import 'package:doodle_n_learn/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      routes: {
        // '/homepage': (context) => const HomePage(),
        // '/intropage': (context) => const IntroPage(),
      },
    );
  }
}
