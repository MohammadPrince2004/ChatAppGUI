import 'package:flutter/material.dart';
import 'package:chatt/BackGroundLogin.dart';
import 'package:chatt/PersonPage.dart';
import 'package:chatt/SignUpPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            BackGroundLogin(),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Log In", style: TextStyle(fontSize: 30,color:Colors.white))],
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("ChatApp", style: TextStyle(fontSize: 25,color:Colors.white70))],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 2),
                          decoration: BoxDecoration(shape: BoxShape.circle,
                          border: Border.all(color:Colors.green.shade300)
                          ),
                    
                          child: CircleAvatar(
                            radius: 100,
                            backgroundColor: Colors.teal.shade400,
                            child: Icon(Icons.person, size: 100,color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: 55,
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide()
                          ),
                          icon: Icon(Icons.email,color:Colors.black45),
                          hintText: 'Enter Email',
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: 55,
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          icon: Icon(Icons.password,color:Colors.black45),
                          hintText: 'Enter Password',
                          labelText: 'Password',
                          
                        ),
                        obscureText: true,
                        
                      ),
                    ),
                  ),
                  Row(mainAxisAlignment:MainAxisAlignment.center,children: [Text("if you have forgetten the pass , "),TextButton(onPressed: (){}, child: Text("click here",style: TextStyle(color:Colors.teal.shade300),))],),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          child: Text("Log in",style: TextStyle(color:Colors.white70),),
                          height: 50,
                          onPressed:(){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                              return PersonPage();
                            }));
                          },
                          color: Colors.teal.shade200,
                          minWidth: 150,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                        SizedBox(width: 20),
                        MaterialButton(
                          child: Text("Sign Up",style: TextStyle(color:Colors.white70),),
                          height: 50,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return SignUpPage();
                            }));
                          },
                          color: Colors.teal.shade200,
                          minWidth: 150,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
