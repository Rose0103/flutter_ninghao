import 'package:flutter/material.dart';
import 'package:flutter_ninghao/model/post.dart';

class ViewDemo extends StatelessWidget {

  Widget _gridItemBuilder (BuildContext context,int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0
      ),
    );
  }
}



class PageViewBuilderDemo extends StatelessWidget {

  Widget _pageItemBuilder (BuildContext context,int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  posts[index].author,
                )
              ],
            )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,

    );
  }
}



class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
//    scrollDirection: Axis.vertical,//设置页面垂直滚动
    children: <Widget>[
      Container(
        color: Colors.brown[900],
        alignment: Alignment(0.0,0.0),
        child: Text(
          'ONE',
          style: TextStyle(fontSize: 32.0,color: Colors.white),
        ),
      ),
      Container(
        color: Colors.green[900],
        alignment: Alignment(0.0,0.0),
        child: Text(
          'TOW',
          style: TextStyle(fontSize: 32.0,color: Colors.white),
        ),
      ),
      Container(
        color: Colors.blue[900],
        alignment: Alignment(0.0,0.0),
        child: Text(
          'THREE',
          style: TextStyle(fontSize: 32.0,color: Colors.white),
        ),
      )
    ],
    );
  }
}
