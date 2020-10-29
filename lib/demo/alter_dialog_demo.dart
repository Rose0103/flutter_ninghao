import 'package:flutter/material.dart';
import 'dart:async';


enum Action { OK, Cancel }

class AlterDialogDemo extends StatefulWidget {
  @override
  _AlterDialogDemoState createState() => _AlterDialogDemoState();
}

class _AlterDialogDemoState extends State<AlterDialogDemo> {

  String _choice = 'Nothing';

  Future _openAlterDialog() async{
   final action = await showDialog(
      context: context,
      barrierDismissible: false,// 若设置为false用户不能点击空白部分来关闭对话框
      builder: (BuildContext context) {
       return AlertDialog(
          title: Text('提示'),
          content: Text('确认删除吗？'),
          elevation: 24,
          actions: <Widget>[
            FlatButton(child: Text('取消'),onPressed: (){ Navigator.pop(context,Action.Cancel);},),
            FlatButton(child: Text('确认'),onPressed: (){ Navigator.pop(context,Action.OK );},),
          ],
        );
      }
    );

   switch(action) {
     case Action.OK:
       setState(() {
         _choice = 'ok';
       });
       break;
     case Action.Cancel:
       setState(() {
         _choice = 'cancel';
       });
       break;
     default:
   }
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlterDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('你点击了： ${_choice}'),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('AlterDialogDemo'),
                  onPressed: _openAlterDialog,
                )
              ],
            )

          ],
        ),

      ),

    );

  }
}
