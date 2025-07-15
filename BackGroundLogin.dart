import 'package:flutter/material.dart';

class BackGroundLogin extends StatelessWidget {
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
          top: -200,
          left: -50,
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
        Positioned(
          bottom: -50,
          right: -30,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Colors.teal.shade300),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.teal.shade100,
              radius: 50,
            ),
          ),
        ),
        Positioned(
          bottom: -50,
          left: -30,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              border: Border.all(width: 2, color: Colors.green.shade300),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.teal.shade100,
              radius: 100,
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          left: 250,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.teal.shade200),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 50,
            ),
          ),
        ),
      ],
    );
  }
}
