import 'package:flutter/material.dart';
import 'package:myapp/belajar-appbar/BarApp.dart';
import 'package:myapp/belajar-card-advance/buildDescriptionCard.dart';

class CardAdvance extends StatefulWidget {
  @override
  _CardAdvanceState createState() => _CardAdvanceState();
}

class _CardAdvanceState extends State<CardAdvance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BarApp("Syntic"),
        backgroundColor: Colors.amber,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.deepOrange],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
          Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Card(
                color: Colors.white70,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.5,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 0.60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(0)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  '5-pantai-tersembunyi-paling-indah-di-dunia-7bu-thumb.jpg'))),
                    ),
                    buildDescription(context),
                  ],
                ),
              ),
            ),
          )
        ]));
  }

}
