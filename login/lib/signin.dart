
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:login/main.dart';
import './homepage.dart';

class SignIn extends StatelessWidget {
 // const SignIn({Key? key}) : super(key: key);
  TextEditingController _email=new  TextEditingController();
  TextEditingController _password=new TextEditingController();
Future<void>signin(BuildContext context) async
{
  bool j=false;
try{
UserCredential userCredential= await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _password.text);
print('signed in');
j=true;
}
catch(e){
  j=false;

  print(e);

}
if(j==true){
Navigator.push(context,MaterialPageRoute(builder: (context) =>  HomePage()));
}
else{
  Navigator.push(context,MaterialPageRoute(builder: (context) =>  PomePage()));
}

}
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text('Sign In',textAlign: TextAlign.center),backgroundColor: Colors.black,),
      body: Container(
          padding: EdgeInsets.all(20),
        color: Colors.pink,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(decoration: InputDecoration(fillColor:Colors.white,hintStyle:TextStyle(color: Colors.white),labelText : 'enter email id',hintText: 'mail id',labelStyle: TextStyle(color:Colors.white,),),controller: _email,),
           TextFormField(decoration: InputDecoration(fillColor:Colors.white,hintStyle:TextStyle(color: Colors.white),labelText : 'enter password',hintText: 'password',labelStyle: TextStyle(color:Colors.white),),controller: _password,),
           FlatButton(onPressed: (
             
           ){
             signin(context);
             
           },child: Text('Sign in',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),),
        ],
      ),
    ),
    );
  }
}
class HomePage extends StatelessWidget {
 // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.pink,
      body: 
      Container(
        padding: EdgeInsets.fromLTRB(80, 290, 20, 160),
        child:Text('Signed In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,fontStyle: FontStyle.italic),
    )
      ),
    );
    
  }
}
class PomePage extends StatelessWidget {
 // const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.pink,
      body: 
      Container(
        padding: EdgeInsets.fromLTRB(80, 290, 20, 160),
        child:Text('Wrong Crendential',style: TextStyle(fontSize: 50),
    )
      ),
    );
    
  }
}

   
   