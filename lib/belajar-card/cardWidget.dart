import 'package:flutter/material.dart';

Card buildCard(IconData icon, String email) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Icon(icon),
          ),
          Text(email)
        ],
      ),
    );
  }