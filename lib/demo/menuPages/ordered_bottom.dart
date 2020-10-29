import 'package:flutter/material.dart';

class OrderedBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      color: Color.fromARGB(100, 200, 200, 0),
      child: Row(
        children: <Widget>[
          new Container(
            child: Text("共1种商品"),
          ),
          new Container(
            child: Text("合计：118元"),
          )
        ],
      ),
    );
  }
}
