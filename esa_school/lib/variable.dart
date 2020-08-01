import 'package:flutter/material.dart';

import 'article.dart';
Size screenDimen;
Container mainInfo;
var widthScreen= screenDimen.width;
var heightScreen= screenDimen.height;
List<Container> createcontainer2( List<Article> articles,BuildContext context) {

  List<Container>containerlist=[];
  for (Article a in articles){
    Container container=Container(
      padding: EdgeInsets.all(2),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8,top: 8),
        child: GestureDetector(
          onTap: (){
//            Navigator.push(
//              context,
//              MaterialPageRoute(
//                  builder: (context) => ArticlePage(a)),
//            );

          },
          child: Column(
            children: <Widget>[
              Card(
                elevation: 5,
                child: Container(
                  height: heightScreen/8,
                  width: heightScreen/8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(a.photo),
                    child: null,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1,style: BorderStyle.solid)
                ),
                child: Text(a.name),
              )
            ],
          ),
        ),
      ),
    );
    containerlist.add(container);

  }

  return containerlist;
}