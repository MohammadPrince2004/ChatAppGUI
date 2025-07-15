import 'package:flutter/material.dart';
import 'package:chatt/BackGroundPerson.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

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
                        icon: Icon(Icons.arrow_back,color: Colors.black38),
                      ),
                      Text(
                        "My Profile",
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
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Colors.green.shade300,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.teal.shade300,
                          child: Icon(
                            Icons.person,
                            size: 100,
                            color: Colors.white70,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      Text(
                        "Account Name",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "@ Email",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
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
                              leading: Icon(Icons.edit, color: Colors.white),
                              minTileHeight: 65,
                              title: Text(
                                "Edit Your data",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Your Account Name , Email Or Password",
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
                              leading: Icon(Icons.image, color: Colors.white),
                              minTileHeight: 65,
                              title: Text(
                                "Change Your Account Image",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Set Up Your Image ",
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
                              leading: Icon(Icons.link, color: Colors.white),
                              minTileHeight: 65,
                              title: Text(
                                "Link With Other Devices",
                                style: TextStyle(color: Colors.white),
                              ),
                              subtitle: Text(
                                "Make a Connextion With Any External Device",
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
