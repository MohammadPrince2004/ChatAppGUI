import 'package:flutter/material.dart';

class BackGroundPerson extends StatelessWidget {
  const BackGroundPerson({super.key});

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
          top: -120,
          right: -100,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal.shade200, width: 1),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.teal.shade100,
              radius: 100,
            ),
          ),
        ),
      ],
    );
  }
}
