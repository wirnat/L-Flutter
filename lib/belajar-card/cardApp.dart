import 'package:flutter/material.dart';
import 'package:myapp/belajar-appbar/BarApp.dart';
import 'package:myapp/belajar-card/cardWidget.dart';

class CardApp extends StatefulWidget {
  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarApp("Syntic"),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(Icons.email, "wirajus@gmail.com"),
            buildCard(Icons.email, "wirajus@gmail.com"),
            buildCard(Icons.email, "wirajus@gmail.com"),
            buildCard(Icons.email, "wirajus@gmail.com"),
            buildCard(Icons.email, "wirajus@gmail.com"),
          ],
        ),
      ),
    );
  }
}
