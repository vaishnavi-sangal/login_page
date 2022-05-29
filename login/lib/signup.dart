
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
 // const SignUp({Key? key}) : super(key: key);
  TextEditingController _email=new TextEditingController();

 TextEditingController _password=new TextEditingController();
 Future<void>signup(context) async
 {
try{
  UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _password.text);
}
catch(e)
{
  print(e);
}
Navigator.push(context,MaterialPageRoute(builder: (context) =>  MyPage()));
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Sign Up',textAlign: TextAlign.center),backgroundColor: Colors.black,),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.pink,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(decoration: InputDecoration(fillColor:Colors.white,hintStyle:TextStyle(color: Colors.white),labelText : 'enter email id',hintText: 'mail id',labelStyle: TextStyle(color:Colors.white)),controller: _email,),
           TextFormField(decoration: InputDecoration(fillColor:Colors.white,hintStyle:TextStyle(color: Colors.white),labelText : 'enter password',hintText: 'password',labelStyle: TextStyle(color:Colors.white)),controller: _password,),
           FlatButton(padding :EdgeInsets.symmetric(vertical: 20,horizontal: 10),
           color: Colors.red,
          onPressed : (){
             signup(context);
           },child: Text('sign up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28)),),



        ]),
      ),
    );
    
  }
}
class MyPage extends StatelessWidget {
 // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: 
      Container(
        padding: EdgeInsets.fromLTRB(80, 290, 20, 160),
        child:Text('Signed Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,fontStyle: FontStyle.italic),
    )
      ),
    );
    
  }
}