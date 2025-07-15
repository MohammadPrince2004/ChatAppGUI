import 'package:flutter/material.dart';
import 'package:chatt/BackGroundPerson.dart';
import 'package:chatt/CallsPage.dart';
import 'package:chatt/Chat.dart';
import 'package:chatt/MyListTile.dart';
import 'package:chatt/PersonDrawerDesign.dart';
import 'package:chatt/PersonIcon.dart';

class PersonPage extends StatelessWidget {
  PersonPage({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              tooltip: "Create A Group",
              heroTag: "btn2",
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              splashColor: Colors.white70,
              onPressed: () {},
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.teal.shade300,
                child: Icon(Icons.groups, size: 20, color: Colors.white70),
              ),
            ),
            SizedBox(height: 5),
            FloatingActionButton(
              tooltip: "Chat Any New Contact",
              heroTag: "btn1",
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(34),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              splashColor: Colors.white70,
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green.shade300),
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.teal.shade300,
                  child: Icon(Icons.chat, color: Colors.white70),
                ),
              ),
            ),
          ],
        ),
        key: _key,
        drawer: Drawer(
          backgroundColor: Colors.black12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(0),
          ),
          child: PersonDrawerDesign(),
        ),
        backgroundColor: Colors.deepPurple.shade50,
        body: Stack(
          children: [
            BackGroundPerson(),

            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(height: 20),
                      IconButton(
                        onPressed: () => _key.currentState!.openDrawer(),
                        icon: Icon(Icons.menu, color: Colors.black38),
                      ),
                      Text(
                        "ChatApp",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return CallsPage();
                              },
                            ),
                          );
                        },
                        icon: Icon(Icons.call, color: Colors.black45),
                      ),
                    ],
                  ),
                ),
                MyListTile(
                  trailing: Column(children: [SizedBox(height: 15,),Text(".... AM/PM",style: TextStyle(fontSize: 10,color:Colors.black38),)],mainAxisAlignment: MainAxisAlignment.end,),

                  leading: PersonIcon(on: true),
                  title: "Me",
                  subtitle: "Last message ",
                  onpress: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return Chat(name: "Me", on: true);
                        },
                      ),
                    );
                  },
                ),
                Divider(color: Colors.teal.shade400),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                        (i) => PersonIcon(on: true, person_name: "Person $i"),
                      ),
                    ),
                  ),
                ),
                Divider(color: Colors.teal.shade400),
                SizedBox(height: 5),

                ...List.generate(
                  3,
                  (i) => MyListTile(
                    trailing: Column(children: [CircleAvatar(backgroundColor: Colors.teal.shade400,radius: 6,),SizedBox(height: 15,),Text(".... AM/PM",style: TextStyle(fontSize: 10,color:Colors.black38),)],mainAxisAlignment: MainAxisAlignment.center,),
                    onpress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Chat(name: "Person $i", on: false);
                          },
                        ),
                      );
                    },
                    leading: PersonIcon(on: false),
                    title: "Person ${i}",
                    subtitle: "Last Message",
                  ),
                ),
                 ...List.generate(
                  2,
                  (i) => MyListTile(
                    // trailing: Column(children: [SizedBox(height: 15,),Text(".... AM/PM",style: TextStyle(fontSize: 10,color:Colors.black38),)],mainAxisAlignment: MainAxisAlignment.center,),

                    onpress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Chat(name: "Person ${i+3}", on: true);
                          },
                        ),
                      );
                    },
                    leading: PersonIcon(on: true),
                    title: "Person ${i+3}",
                    subtitle: "Last Message",
                    trailing: Column(children: [SizedBox(height: 15,),Text(".... AM/PM",style: TextStyle(fontSize: 10,color:Colors.black38),)],mainAxisAlignment: MainAxisAlignment.end,),

                  ),
                ),
                 ...List.generate(
                  5,
                  (i) => MyListTile(
                    onpress: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Chat(name: "Person ${i+5}", on: false);
                          },
                        ),
                      );
                    },
                    leading: PersonIcon(on: false),
                    title: "Person ${i+5}",
                    subtitle: "Last Message",
                  trailing: Column(children: [SizedBox(height: 15,),Text(".... AM/PM",style: TextStyle(fontSize: 10,color:Colors.black38),)],mainAxisAlignment: MainAxisAlignment.end,),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
