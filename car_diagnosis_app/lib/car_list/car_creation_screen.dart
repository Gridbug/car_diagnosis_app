import 'dart:ui';

import 'package:flutter/material.dart';

class CarCreationScreen extends StatefulWidget {
  static const routeName = 'CarCreationScreen';

  @override
  _CarCreationScreenState createState() => _CarCreationScreenState();
}

class _CarCreationScreenState extends State<CarCreationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New car"),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Colors.blue, Colors.white], radius: 1.5),
                color: Colors.blue),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Icon(Icons.add_a_photo, size: 128, color: Colors.white),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white),
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          // IconButton(
          //   icon: Icon(Icons.add_a_photo, color: Colors.black),
          //   iconSize: 128,
          //   onPressed: () {
          //     print('pressed');
          //   },
          // ),
        ],
      ),
    );
  }
}
