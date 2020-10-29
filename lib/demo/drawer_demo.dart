import 'package:flutter/material.dart';

class DraWerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('高冷冷',style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text('1604857467@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2612816471,1892359600&fm=26&gp=0.jpg'),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2612816471,1892359600&fm=26&gp=0.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[300].withOpacity(0.5),
                      BlendMode.hardLight,
                    )
                )
            ),
          ),
          ListTile(
            title: Text('消息',style: TextStyle(fontSize: 18.0),),
            leading: Icon(Icons.message,color: Colors.black12,size: 24.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('喜欢',style: TextStyle(fontSize: 18.0),),
            leading: Icon(Icons.favorite,color: Colors.black12,size: 24.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('设置',style: TextStyle(fontSize: 18.0),),
            leading: Icon(Icons.settings,color: Colors.black12,size: 24.0,),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
