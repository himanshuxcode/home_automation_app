import 'package:flutter/material.dart';

class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB7E0FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB7E0FF),
        title: Text("Room 1"),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10.0),
            ),
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Room 1",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Icon(Icons.thermostat),
                          Text("35C"),
                          SizedBox(width: 5,),
                          Icon(Icons.water_drop),
                          Text("58%"),
                        ],
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text("Light 1"),
                  leading: Icon(Icons.light),
                  trailing: Switch(
                    value: true,
                    onChanged: (val) {},
                  ),
                ),
                ListTile(
                  title: Text("Light 2"),
                  leading: Icon(Icons.lightbulb),
                  trailing: Switch(
                    value: true,
                    onChanged: (val) {},
                  ),
                ),
                ListTile(
                  title: Text("Fan"),
                  leading: Icon(Icons.ac_unit_sharp),
                  trailing: Switch(
                    value: true,
                    onChanged: (val) {},
                  ),
                ),
                ListTile(
                  title: Text("Curtains"),
                  leading: Icon(Icons.curtains),
                  trailing: Switch(
                    value: true,
                    onChanged: (val) {},
                  ),
                ),
                ListTile(
                  title: Text("Door"),
                  leading: Icon(Icons.door_sliding_outlined),
                  trailing: Switch(
                    value: true,
                    onChanged: (val) {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
