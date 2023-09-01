import 'package:flutter/material.dart';
import 'package:layot/guideRift.dart';

class Rift extends StatelessWidget {
  const Rift({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[200],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/rift.png',
              fit: BoxFit.cover,
            ),
            const Text(
              'Rift Guides',
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              'Find The Guide You Need',
              style: TextStyle(fontSize: 10, color: Colors.grey[500]),
            ),
            const Next()
          ],
        )));
  }
}

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 50),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Guides()));
          },
          child: Text(
            'Enter Guides',
            style: TextStyle(color: Colors.black),
          )),
    );
  }
}
