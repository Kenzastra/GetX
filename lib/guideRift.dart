import 'package:flutter/material.dart';
import 'package:layot/blank.dart';
import 'package:layot/rift.dart';

class Guides extends StatelessWidget {
  const Guides({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(),
      //         child: Text('Drawer'),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            titleSection,
            SizedBox(
              height: 10,
            ),
            champButtonSection,
            SizedBox(
              height: 10,
            ),
            equiqButtonSection,
            SizedBox(
              height: 10,
            ),
            runeButtonSection,
            SizedBox(
              height: 8,
            ),
            newsButtonSection,
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: Size(150, 50)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Rift()));
                            },
                            icon:
                                Icon(Icons.home_outlined, color: Colors.black),
                            label: Text(
                              'Home',
                              style: TextStyle(color: Colors.black),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                fixedSize: Size(150, 50)),
                            onPressed: () {},
                            icon: Icon(Icons.settings_outlined,
                                color: Colors.black),
                            label: Text('Settings',
                                style: TextStyle(color: Colors.black)))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 5),
              child: const Text(
                'Welcome To Rift Guides',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
            )
          ],
        ),
      )
    ],
  ),
);

Widget champButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/Tank_icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'Champions',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget equiqButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/Mage_icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'Items',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget runeButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/Rune_icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'Runes',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

Widget newsButtonSection = Container(
  decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(30))),
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.only(right: 50, left: 50),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/icon.png',
        width: 100,
        height: 100,
      ),
      Expanded(
        child: Text(
          'News And Update',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      const Next()
    ],
  ),
);

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blank()));
            },
            icon: Icon(Icons.arrow_forward))
      ],
    );
  }
}
