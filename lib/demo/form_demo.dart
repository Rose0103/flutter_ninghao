import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
          data: Theme.of(context).copyWith(
            primaryColor: Colors.black
          ),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RegisterForm()
              ],
            ),
          )
      ),
    );
  }
}


//注册form表单
class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  final registerFormKey = GlobalKey<FormState>();
  String username,password;
  bool autovalidate = false;

  //表单自动验证
  void submitRegisterForm() {
    if(registerFormKey.currentState.validate()){
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      Scaffold.of(context).showSnackBar(
       SnackBar(content: Text('Register...'))
      );
    }else{
      setState(() {
        autovalidate = true;
      });
    }

  }



//  void submitRegisterForm () {
//    registerFormKey.currentState.save();
//    registerFormKey.currentState.validate();
//    debugPrint('username: $username');
//    debugPrint('password: $password');
//  }

  String validataUsername(value) {
    if(value.isEmpty){
      return 'Username is required.';
    }
    return null;
  }

  String validataPassword(value) {
    if(value.isEmpty){
      return 'Password is required.';
    }
    return null;
  }



  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: validataUsername,
            autovalidate: autovalidate, //表单自动验证
          ),
          TextFormField(
            obscureText: true, //密码显示打码
            decoration: InputDecoration(
              labelText: 'password',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: validataPassword,
            autovalidate: autovalidate,
          ),
          SizedBox(height: 16.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('register',style: TextStyle(fontSize: 22.0,color: Colors.white),),
              onPressed: submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}






//文本框
class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
//    textEditingController.text = 'hi';
    textEditingController.addListener(
        (){
          debugPrint('${textEditingController.text}');
        }
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return TextField(
//      onChanged: (value){
//        debugPrint('input: ${value}');
//      },
      controller: textEditingController,
      onSubmitted: (value){
        debugPrint('submitted:${value}');
      },
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'username',//标签文本
        hintText: 'Enter the post title.', //提示输入
        border: OutlineInputBorder(),
//        border: InputBorder.none, //去掉边框
        filled: true, //添加灰色背景
      ),
    );
  }
}

