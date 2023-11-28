import 'package:doodle_n_learn/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset(
                'lib/assets/main/mainlogo.png',
                height: 240,
              ),
            ),

            const SizedBox(height: 50),

            //title
            const Text(
              'Doodle n Learn',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),

            //subtitle
            const Text(
              'Learn Playfully',
              style: TextStyle(fontWeight: FontWeight.w300),
            ),

            const SizedBox(
              height: 30,
            ),

            //button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Start Learning',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
