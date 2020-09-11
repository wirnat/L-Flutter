import 'package:flutter/material.dart';
import 'package:myapp/belajar-login/login.dart';
import 'package:myapp/belajar-navigasi/main_page.dart';
import 'package:myapp/main.dart';

Container buildDescription(BuildContext context) {
  return Container(
    margin: EdgeInsets.fromLTRB(
        20, MediaQuery.of(context).size.width * 0.60 + 20, 20, 10),
    child: Column(
      children: [
        Center(
            child: Text(
          'Wellcome to bali bitch!',
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.deepOrange,
          ),
        )),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Posted on',
                    style: buildTextStyle(),
                  ),
                  Text(
                    ' 10 September 2020',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.thumb_up, size: 10, color: Colors.red),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '100',
                          style: buildTextStyle(),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.comment, size: 10, color: Colors.red),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '200',
                          style: buildTextStyle(),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RaisedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginPage();
                          }));
                        },
                        child: Text('Login'),
                        color: Colors.amber)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

TextStyle buildTextStyle() {
  return TextStyle(color: Colors.blueGrey, fontSize: 12);
}
