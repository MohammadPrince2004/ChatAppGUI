import 'package:flutter/material.dart';
import 'package:chatt/ChatBackGround.dart';
import 'package:chatt/PersonIcon.dart';

// ignore: must_be_immutable
class Chat extends StatelessWidget {
  String name;
  bool on;
  Chat({super.key, required this.name, required this.on});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ChatBackGround(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 20),
                    PersonIcon(on: on),
                    Text(
                      "$name",
                      style: TextStyle(fontSize: 16, color: Colors.white60),
                    ),
                    SizedBox(width: 70),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.call),
                      color: Colors.white60,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam_rounded,
                        size: 30,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                
                                color: Colors.teal,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(35),
                                  bottomLeft: Radius.circular(35),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "  Hi , Bro !",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "... AM/PM \t",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  bottomRight: Radius.circular(35),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          " How Are You ??",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                         "... AM/PM \t\t      ",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white54,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hint: Text(
                        "Enter The Message",
                        style: TextStyle(color: Colors.black26),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.teal.shade400,
                          radius: 20,
                          child: IconButton(
                            tooltip: "Recored",
                            onPressed: () {},
                            icon: Icon(
                              Icons.mic,
                              size: 20,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // SizedBox(width: 10),
                    SizedBox(width: 5),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.teal.shade400,
                          radius: 20,
                          child: IconButton(
                            tooltip: "Send A Document ",
                            onPressed: () {},
                            icon: Icon(
                              Icons.document_scanner,
                              size: 20,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 22,
                          child: IconButton(
                            tooltip: "Send ",
                            onPressed: () {},
                            icon: Icon(
                              Icons.send,
                              size: 22,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.teal.shade400,
                          radius: 20,
                          child: IconButton(
                            tooltip: "Send A File",
                            onPressed: () {},
                            icon: Icon(
                              Icons.file_upload_sharp,
                              size: 20,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
