import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2612816471,1892359600&fm=26&gp=0.jpg'),
            fit: BoxFit.cover
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //居中
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0, color: Colors.green,),
//            color: Color.fromRGBO(253, 145, 23, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(16.0),//设置圆角
              boxShadow: [//设置阴影
                BoxShadow(
                  offset: Offset(9.0, 9.0),//偏移量
                  color: Color.fromRGBO(16, 20, 88, 1.0),
                  blurRadius: 25.0,//模糊程度
                  spreadRadius: -9.0, //阴影扩散程度
                )
              ],
              shape: BoxShape.circle, //设置形状圆形
              color:Color.fromRGBO(253, 145, 23, 1.0),
              border: Border.all( //设置边框样式
                color: Colors.black,
                width: 2.0,
                style: BorderStyle.solid,
              )
            ),
          )
        ],
      )
    );
  }
}
