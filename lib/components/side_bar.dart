import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildHeader(BuildContext context) => Container(
          color: Colors.blueGrey,
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          child: const Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: NetworkImage(
                    'https://toppng.com/uploads/preview/donna-picarro-dummy-avatar-115633298255iautrofxa.png'),
              ),
              Text('Hello, User', style: TextStyle(color: Colors.white)),
              Text('jamey@xyz.com', style: TextStyle(color: Colors.white))
            ],
          ),
        );
    Widget buildMenuItems(BuildContext context) => Column(
          children: [
            ListTile(
              leading: const Icon(Icons.home_filled),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorite'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            )
          ],
        );
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ));
  }
}
