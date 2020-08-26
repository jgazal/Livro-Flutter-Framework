import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Column(children: [
                    Text('Olá mundo!', style: TextStyle(fontSize: 80)),
                    Icon(Icons.android, color: Colors.green, size: 80),
                  ]))))));
}
