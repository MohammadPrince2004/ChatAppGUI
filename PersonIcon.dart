import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PersonIcon extends StatelessWidget {
  bool on;
  VoidCallback? ontap;
  String? person_name;
  PersonIcon({required this.on,this.person_name,this.ontap});
  @override
  Widget build(BuildContext context) {
    if (person_name != null){
      return Padding(
        padding: const EdgeInsets.all(3.0),
        child: InkWell(
          onTap: ontap==null?null:ontap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width:on? 1:0,color:on? Colors.green.shade300:Colors.transparent)),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  
                ],
              ),
              Text("$person_name" ,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300, color: Colors.black87))
            ],
          ),
        ),
      );}else{
        print(1);
        return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    
                    decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(width:on? 1:0,color:on? Colors.green.shade300:Colors.transparent)),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black12,
                      child: Icon(
                        Icons.person,
                        size: 30,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  
                ],
              ),
          ],
        ),
      );
      }
  }
  
}
