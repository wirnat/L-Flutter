import 'package:flutter/material.dart';

void main() => LoginPage();

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -MediaQuery.of(context).size.height / 8,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.pink, Colors.orange],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            right: getBigDiameter(context) / 3,
            top: -MediaQuery.of(context).size.height / 8,
            child: Container(
              child: Center(
                  child: Text(
                "Syntic",
                style: TextStyle(
                    fontFamily: "Pacifico", fontSize: 30, color: Colors.white),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.pink, Colors.orange],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: MediaQuery.of(context).size.height * 0.8,
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height*0.4, 20, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            height: MediaQuery.of(context).size.height/4,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.purple,
                      icon: Icon(Icons.email),
                      hintText: 'ex: wirajus@gmail.com'
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.purple,
                      icon: Icon(Icons.vpn_key),
                      hintText: 'Password'
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
