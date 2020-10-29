import 'package:flutter/material.dart';
import 'package:flutter_ninghao/demo/state/state_management_demo.dart';
import 'package:provide/provide.dart';
import '../provide/counter.dart';


class ProvideCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: <Widget>[
            Number(),
            MyButton(),
            MyProvide()
          ],
        ),
      ),
    );
  }
}


class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200),
       child: Provide<Counters>(
           builder: (context,child,counter){
             return Text('${counter.value}',style: TextStyle(fontSize: 32.0),);
           }
       ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: () {
            Provide.value<Counters>(context).increment();
          },
          child: Text('递增'),
      ),
    );
  }
}

class MyProvide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return StateManagementDemo();
            }));
          },
          child: Text('切换'),
       ),
    );
  }
}
