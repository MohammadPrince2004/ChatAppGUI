import 'package:flutter/material.dart';
import 'package:chatt/BackGroundPerson.dart';
import 'package:chatt/MyListTile.dart';
import 'package:chatt/PersonIcon.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BackGroundPerson(),
            Column(
              mainAxisSize: MainAxisSize.min,
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
                        "Calls",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 25,child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    Text("The Messages And Calls Are End-To-End Encrypted",style: TextStyle(color:Colors.black26),),
                  ],
                ),),
                Flexible(
                  child: SizedBox(
                    child: ListView(
                      shrinkWrap: true,
                      children: [...List.generate(
                        2,
                        (i) => MyListTile(
                          leading: PersonIcon(on: false),
                          title: "person ${i+3}",
                          subtitle: " ..... AM / PM",
                          trailing: Icon(Icons.call,color: Colors.teal.shade300,),
                        
                        ),
                      ),...List.generate(
                        3,
                        (i) => MyListTile(
                          leading: PersonIcon(on: false),
                          title: "person $i",
                          subtitle: " ..... AM / PM",
                          trailing: Icon(Icons.videocam_rounded,color: Colors.teal.shade300,),
                        
                        ),
                      ),]
                    ),
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
