import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderedMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 2.0),
      padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.black12
          )
        ),
      ),
      child: Row(
        children: <Widget>[
          _cartCheckBt(),
          _orderImage(),
          _CartGoodsName(),
          MenuCount(),
          _delBtn(),
          _totalPrice(),
        ],
      ),
    );
  }
}

//多选按钮
Widget _cartCheckBt(){
  return Container(
    child: Checkbox(
      value: true,
      activeColor:Colors.green,
      onChanged: (bool val){

      },
    ),
  );
}

//商品图片
Widget _orderImage(){
  return  Container(
//    width: ScreenUtil().setWidth(150),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.black12)
      ),
      child: Image.network("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3777575707,4188384036&fm=26&gp=0.jpg",
        height: 100, //设置高度
        width: 100, //设置宽度
        fit: BoxFit.cover, //填充
        gaplessPlayback: true, //防止重绘),
      ),
  );
}


//商品名称
Widget _CartGoodsName(){
  return Container(
//    width: ScreenUtil().setWidth(300),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topLeft,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("青椒炒肉",style: TextStyle(fontSize: 22.0,),),
        SizedBox(height: 20.0,),
        Text("￥:118元",style: TextStyle(fontSize: 20.0,color: Colors.red),),
      ],
    ),
  );
}

class MenuCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.black12),
      ),
      child: Row(
        children: <Widget>[
          _reduceBtn(),
          _countNum(),
          _addBtn(),
        ],
      ),
    );
  }
}

//减号按钮
Widget _reduceBtn(){
  return InkWell(
    onTap: (){

    },
    child: Container(
      width: 45.0,
      height: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          right: BorderSide(width: 1,color: Colors.black12)
        )
      ),
      child: Text("-"),
    ),
  );
}

//加号按钮
Widget _addBtn(){
  return InkWell(
    onTap: (){

    },
    child: Container(
      width: 45.0,
      height: 45.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              left: BorderSide(width: 1,color: Colors.black12)
          )
      ),
      child: Text("+"),
    ),
  );
}

//中间数量
Widget _countNum(){
  return Container(
    width: 70.0,
    height: 45.0,
    alignment: Alignment.center,
    color: Colors.white,
    child: Text("1"),
  );
}

//删除按钮
Widget _delBtn(){
  return Container(
    margin: EdgeInsets.only(left: 40.0),
    child: new RaisedButton(
      onPressed: (){},
      child: Text("删除"),
    ),
  );
}

//总价格
Widget _totalPrice(){
  return Container(
    margin: EdgeInsets.only(left: 10.0),
    child: Text("￥38元",style: TextStyle(fontSize: 22.0,color: Colors.red),),
  );
}