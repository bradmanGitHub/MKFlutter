import 'package:flutter/material.dart';

void main() {
  //create text widget
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Let's See Images!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hi there!');
        },
      ),
    ),
  );

  //show text on screen
  runApp(app);
}
