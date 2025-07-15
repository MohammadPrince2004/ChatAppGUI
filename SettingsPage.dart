import 'package:flutter/material.dart';
import 'package:chatt/BackGroundPerson.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackGroundPerson(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(height: 20),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back, color: Colors.black38),
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),
                SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Card(
                          shadowColor: Colors.teal.shade300,
                          elevation: 2,
                          color: Colors.teal.shade300,
                          child: SizedBox(
                            width: 370,
                            child: ListTile(
                              splashColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onTap: () {},
                              leading: Icon(Icons.edit, color: Colors.white),
                              minTileHeight: 65,
                              title: Text(
                                "Edit Privacy & Security",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Oline Status , Read Receipts , Blocked Contacts , App Lock",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Card(
                          shadowColor: Colors.teal.shade300,
                          elevation: 2,
                          color: Colors.teal.shade300,
                          child: SizedBox(
                            width: 370,
                            child: ListTile(
                              splashColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onTap: () {},
                              leading: Icon(
                                Icons.app_shortcut,
                                color: Colors.white,
                              ),
                              minTileHeight: 65,
                              title: Text(
                                "Appearance",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Modes , Font Style & Size , App Theme Color ",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Card(
                          shadowColor: Colors.teal.shade300,
                          elevation: 2,
                          color: Colors.teal.shade300,
                          child: SizedBox(
                            width: 370,
                            child: ListTile(
                              splashColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onTap: () {},
                              leading: Icon(Icons.chat, color: Colors.white),
                              minTileHeight: 65,
                              title: Text(
                                "Chats ",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Clear , Restore Chats",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Card(
                          shadowColor: Colors.teal.shade300,
                          elevation: 2,
                          color: Colors.teal.shade300,
                          child: SizedBox(
                            width: 370,
                            child: ListTile(
                              splashColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onTap: () {},
                              leading: Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                              minTileHeight: 65,
                              title: Text(
                                "Notifications ",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Turn On/Off Notifications , Call Notifications ",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Card(
                          shadowColor: Colors.teal.shade300,
                          elevation: 2,
                          color: Colors.teal.shade300,
                          child: SizedBox(
                            width: 370,
                            child: ListTile(
                              splashColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onTap: () {},
                              leading: Icon(
                                Icons.language,
                                color: Colors.white,
                              ),
                              minTileHeight: 65,
                              title: Text(
                                "Language ",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Change The Language Of The App , Time Format ",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: Card(
                          shadowColor: Colors.teal.shade300,
                          elevation: 2,
                          color: Colors.teal.shade300,
                          child: SizedBox(
                            width: 370,
                            child: ListTile(
                              splashColor: Colors.white54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              onTap: () {},
                              leading: Icon(Icons.call, color: Colors.white),
                              minTileHeight: 65,
                              title: Text(
                                "Calls ",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Call History Ringtone / Vibration Settings",

                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
