import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyListTile extends StatelessWidget {
  Widget leading;
  Widget? trailing;
  String? title;
  String? subtitle;
  VoidCallback? onpress;

  MyListTile({
    required this.leading,
    this.trailing=const SizedBox(),
    this.title="",
    this.subtitle="",
    this.onpress
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onpress!=null?onpress!:null,
        splashColor: Colors.teal.shade300,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
          child: Row(
          
            children: [
              leading,
              SizedBox(width: 10,),
              Column(
                children: [
                  Text(title!, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300, color: Colors.black87)),
                  Text(subtitle!, style: TextStyle(fontSize: 14, color: Colors.black54))
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Spacer(),
              trailing!
              ,SizedBox(width: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
