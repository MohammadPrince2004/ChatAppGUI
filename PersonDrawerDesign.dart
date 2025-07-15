import 'package:flutter/material.dart';
import 'package:chatt/LoginPage.dart';
import 'package:chatt/MyProfile.dart';
import 'package:chatt/SettingsPage.dart';


class PersonDrawerDesign extends StatelessWidget {
  PersonDrawerDesign({super.key});

  @override
  Widget build(BuildContext context) {
   
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: SizedBox()),
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.teal),
          accountName: Text("Account Name (Me)",style: TextStyle(fontSize: 14,),),
          accountEmail: Text("@ Email",style: TextStyle(fontSize: 14,),),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white60,
            radius: 40,
            child: Icon(Icons.person, color: Colors.teal, size: 40),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MyProfile();
              }));
            },
             splashColor: Colors.teal,
            child: Row(
              children: [
                Icon(Icons.person_outlined, color: Colors.white70),
                SizedBox(width: 10),
                Text(" My Profile ", style: TextStyle(color: Colors.white70,fontSize: 14,)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: MaterialButton(
             splashColor: Colors.teal,
            onPressed: (){},
            
            child: Row(
              children: [
                Icon(Icons.light_mode_outlined, color: Colors.white70),
                SizedBox(width: 10),
                Text(" Mode ", style: TextStyle(color: Colors.white70,fontSize: 14,)),
              ],
            ),
          ),
        ),

        SizedBox(
          height: 50,
          child: MaterialButton(
             splashColor: Colors.teal,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return SettingsPage();
              }));
            },
            child: Row(
              children: [
                Icon(Icons.settings_outlined, color: Colors.white70),
                SizedBox(width: 10),
                Text(" Settings ", style: TextStyle(color: Colors.white70,fontSize: 14,)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                return LoginPage();
              }));
            },
            splashColor: Colors.teal,
            child: Row(
              children: [
                
                Icon(Icons.logout_outlined, color: Colors.white70),
                SizedBox(width: 10),
                Text(" Log out ", style: TextStyle(color: Colors.white70,fontSize: 14,)),
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: 50,
        //   child: MaterialButton(
        //      splashColor: Colors.teal,
        //     onPressed: () {},
        //     child: Row(
        //       children: [
        //         Icon(Icons.info_outline, color: Colors.white70),
        //         SizedBox(width: 10),
        //         Text(" Info ", style: TextStyle(color: Colors.white70,fontSize: 14,)),
        //       ],
        //     ),
        //   ),
        // ),
        Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Programmed By Elprince \t",
              style: TextStyle(color: Colors.white54,fontSize: 14,),
            ),
            Icon(Icons.computer, color: Colors.white54),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
