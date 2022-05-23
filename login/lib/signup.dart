import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
 // const SignUp({Key? key}) : super(key: key);
  TextEditingController _email=new TextEditingController();

 TextEditingController _password=new TextEditingController();
 Future<void>signup() async
 {
try{
  UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _password.text);
}
catch(e)
{
  print(e);
}
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(children: [
          TextFormField(decoration: InputDecoration(labelText : 'enter email id',hintText: 'mail id'),controller: _email,),
           TextFormField(decoration: InputDecoration(labelText : 'enter password',hintText: 'password'),controller: _password,),
           FlatButton(onPressed: (){
             signup();
           },child: Text('sign up'),),



        ]),
      ),
    );
    
  }
}