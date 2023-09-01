import 'package:flutter/material.dart';
import 'package:layot/rift.dart';
import 'package:layot/tr_layout.dart';
import 'package:layot/manage.dart';

import 'interactivity.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tr2()));
              },
              child: Text('Latihan 2')),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tr3()));
              },
              child: Text('Latihan 3')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Rift()));
              },
              child: Text('Rift Page')),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Manage()));
              },
              child: Text('State Management'))
        ]),
      ),
    );
  }
}
