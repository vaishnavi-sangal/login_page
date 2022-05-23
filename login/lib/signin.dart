import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
 // const SignIn({Key? key}) : super(key: key);
  TextEditingController _email=new  TextEditingController();
  TextEditingController _password=new TextEditingController();
Future<void>signin() async
{
try{
UserCredential userCredential= await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _password.text);
}
catch(e){
  print(e);

}
MainPage();
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
             signin();
           },child: Text('sign in'),),
        ],
      ),
    ),
    );
  }
}
class MainPage extends StatelessWidget {
 // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('sign in successfully'),
    );
    
  }
}