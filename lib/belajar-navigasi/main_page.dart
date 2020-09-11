import 'package:flutter/material.dart';
import 'package:myapp/belajar-navigasi/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page'),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context){
                return SecondPage();
              })
            );
          },
          child: Text('GO TO SECOND PAGE'),
        )
      ),
    );
  }
}