import 'package:flutter/material.dart';
import 'package:myapp/belajar-navigasi/main_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Login'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MainPage();
            }));
          },
          )
        ,),
    );
  }
} 