


import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
        body: Center(
          child: Text(
            'Hello',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}