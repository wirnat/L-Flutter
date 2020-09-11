import 'package:flutter/material.dart';
import 'package:myapp/belajar-navigasi/main_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return MainPage();
            }));
          },
          child: Text('Kembali'),
        )
      ),
    );
  }
}