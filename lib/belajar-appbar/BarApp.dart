import 'package:flutter/material.dart';

  Widget BarApp(String title) {
    return new AppBar(
        title: Text(title),
        leading: Icon(Icons.ac_unit,color: Colors.white24,),
        actions: [
          IconButton(icon: Icon(Icons.list), onPressed: (){}),
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){}),
        ],
        flexibleSpace: Container(
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple,Colors.red],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight
            ),
            // image: DecorationImage(
            //   image: AssetImage('pattern4.png'),
            //   fit: BoxFit.cover,
            //   repeat: ImageRepeat.repeat
            // )
          ),
        ),
      );
  }
