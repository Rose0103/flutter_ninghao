import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[

          IconButton(icon: Icon(Icons.pool,size: 60.0,color: Colors.green,), onPressed: null),
          IconButton(icon: Icon(Icons.security,size: 60.0,color: Colors.green,), onPressed: null),
          IconButton(icon: Icon(Icons.record_voice_over,size: 60.0,color: Colors.green,), onPressed: null),

        ],
      ),
    );
  }
}
