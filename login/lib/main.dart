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
      appBar: AppBar(),
      body: Container(
        child: Column(children: [
          RaisedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
          },child:Text('Sign Up')),
           RaisedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
          },child:Text('Sign In')),
        
        ]),
      ),
    );
    
  }
}