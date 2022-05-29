import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './signup.dart';
import './signin.dart';

void main()   async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:HomePage()
    );
    
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      appBar: AppBar(title: Text('Login Sign Up',textAlign: TextAlign.center,),backgroundColor: Colors.black,),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          RaisedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
          },child:Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold),)),
           RaisedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
          },child:Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold)),),
        
        ]),
      ),
    );
    
  }
}