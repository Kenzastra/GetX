import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Blank extends StatelessWidget {
  const Blank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: SizedBox(
                height: 115,
                width: 115,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/sun.jpg')),
                    Positioned(
                        right: -25,
                        bottom: -10,
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.lightBlue[300],
                          child: Icon(Icons.camera_alt_outlined),
                          padding: EdgeInsets.all(15),
                          shape: CircleBorder(),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Form()
          ],
        ),
      ),
    );
  }
}

const List<String> rank = <String>['Iron', 'Bronze', 'Silver', 'Gold'];
const List<String> role = <String>[
  'Baron',
  'Mid',
  'Jungle',
  'Dragon',
  'Support'
];

class Form extends StatefulWidget {
  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  String dropdownRankValue = rank.first;
  String dropdownRoleValue = role.first;

  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Username'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Email'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                    borderRadius: BorderRadius.circular(999)),
                    child: DropdownButton<String>(
                      value: dropdownRankValue,
                      icon: Icon(Icons.arrow_drop_down),
                      elevation: 10,
                      onChanged: (String? value) {
                        setState(() {
                          dropdownRankValue = value!;
                        });
                      },
                      items: rank.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: DropdownButton<String>(
                    value: dropdownRoleValue,
                    icon: Icon(Icons.arrow_drop_down),
                    elevation: 10,
                    onChanged: (String? value) {
                      setState(() {
                        dropdownRoleValue = value!;
                      });
                    },
                    items: role.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
          TextField(
            controller: dateInput,
            decoration: InputDecoration(
                icon: Icon(Icons.calendar_today), labelText: "Enter Date"),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1950),
                  lastDate: DateTime(2100));

              if (pickedDate != null) {
                print(pickedDate);

                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                print(formattedDate);

                setState(() {
                  dateInput.text = formattedDate;
                });
              } else {}
            },
          ),
          Container(
            padding: EdgeInsets.all(50),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 50)),
                onPressed: () {},
                child: Text("Welcome To Wild Rift")),
          )
        ],
      ),
    );
  }
}
