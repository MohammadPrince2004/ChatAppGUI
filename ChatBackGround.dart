import 'package:flutter/material.dart';

class ChatBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.teal.shade50,
        ),
        Positioned(
          top: -400,
          right: -50,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green.shade300, width: 1),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.teal.shade200,
              radius: 250,
            ),
          ),
        ),
       
      ],
    );
  }

}
    