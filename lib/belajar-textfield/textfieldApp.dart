import 'package:flutter/material.dart';
import 'package:myapp/belajar-appbar/BarApp.dart';

class TextfieldApp extends StatefulWidget {
  @override
  _TextfieldAppState createState() => _TextfieldAppState();
}

class _TextfieldAppState extends State<TextfieldApp> {
  @override
  TextEditingController emailForm = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarApp("Syntic"),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusColor: Colors.amber,
                helperText: "Masukkan Email",
                hintText: "Contoh: wirajus@gmail.com",
                labelText: "Email",
                icon: Icon(Icons.mail_outline)
              ),
              controller: emailForm,
              onChanged: (value){
                setState((){});
              },
            ),
            SizedBox(
              height: 40,
            ),
            Text(emailForm.text)
          ],
        ),
      ),
    );
  }
}
