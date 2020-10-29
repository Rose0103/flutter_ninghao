import 'package:flutter/material.dart';
import 'package:flutter_ninghao/provide/counter.dart';
import 'package:provide/provide.dart';

class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int count = 0;

  void _increaseCount(){
    setState(() {
      count +=1;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagement'),
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Counter(
              count,_increaseCount
          ),
          SizedBox(height: 16.0,),
          ProvideDemo()
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed:_increaseCount
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;

  final VoidCallback increaseCount;

  Counter(this.count,this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('$count'),
        onPressed: increaseCount,
      ),
    );
  }
}


class ProvideDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Provide<Counters>(

          builder: (context,child,counter){
            return Text('${counter.value}',style: TextStyle(fontSize: 32.0),);
          }
      ),
    );
  }
}
