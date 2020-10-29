import 'package:flutter/material.dart';
import 'package:flutter_ninghao/demo/post_show.dart';
import 'package:flutter_ninghao/model/post.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
              ),
              SizedBox(height: 16.0,),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 16.0,)
            ],
          ),
          Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.yellowAccent.withOpacity(0.3),
                  highlightColor: Colors.yellowAccent.withOpacity(0.1),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PostShow(post: posts[index],))
                    );
                  },
                ),
              )
          )
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
    );
  }
}
