import 'package:flutter/material.dart';
import 'dart:async';

class ShowModalBottomSheetDemo extends StatefulWidget {
  @override
  _ShowModalBottomSheetDemoState createState() => _ShowModalBottomSheetDemoState();
}

class _ShowModalBottomSheetDemoState extends State<ShowModalBottomSheetDemo> {

 Future _openModalBottomSheet () async{
  final options = await  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('options A'),
                onTap: () {
                  Navigator.pop(context,'A');
                },
              ),
              ListTile(
                title: Text('options B'),
                onTap: () {
                  Navigator.pop(context,'B');
                },
              ),
              ListTile(
                title: Text('options C'),
                onTap: () {
                  Navigator.pop(context,'C');
                },
              ),
            ],
          ),
        );
      },
    );
    debugPrint(options);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShowModalBottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Modal BottomSheet'),
                  onPressed: _openModalBottomSheet,
                )
              ],
            )
          ],

        ),
      ),
    );
  }
}
