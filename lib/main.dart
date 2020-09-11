import 'package:flutter/material.dart';
import 'package:myapp/belajar-card-advance/cardAdv.dart';
import 'package:myapp/belajar-card/cardApp.dart';
import 'package:myapp/belajar-login/login.dart';
import 'package:myapp/belajar-textfield/textfieldApp.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardAdvance()
    );
  }
}