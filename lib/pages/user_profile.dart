import 'package:arksormobileapp/pages/feed_new_post.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/margin.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed_item_detail.dart';
import 'home.dart';

class UserProfilePage extends StatelessWidget{
  Widget ownFeed(BuildContext context) {
    return (
        Container(
          color: Colors.white,
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          child:
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child:
                    new Container(
                      margin: const EdgeInsets.only(
                          top: 10
                      ),
                      child: Text("a multi-paradigm, dynamically typed, multipurpose programming language, designed to be quick (to learn, to use, and to understand), and to enforce a "),
                    ),
                  )
                ],),
              Row(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child:
                    GestureDetector(
                      onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FeedItemDetail())); },
                      child: Container(
                        color: Colors.grey,
                        margin: const EdgeInsets.only(
                            top: 10
                        ),
                        height: 200,
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.fitWidth,
                          placeholder: 'assets/company/place_holder.png',
                          image: 'https://tst-construction.com/wp-content/uploads/2018/01/photo-placeholder-800x450.jpg',
                        ),
                      ),
                    ),
                  )
                ],),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      children: <Widget>[
                        Row(children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.only(
                                left: 5,
                                top: 5
                            ),
                            child: Icon(Icons.favorite,color: Colors.pink,size: 20,),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(
                                left: 5,
                                top: 5
                            ),
                            child: Text("600",style: TextStyle(fontSize: 13),),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(
                                left: 20,
                                top: 5
                            ),
                            child: Icon(Icons.comment,color: Colors.grey,size: 20,),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(
                                left: 5,
                                top: 5
                            ),
                            child: Text("120",style: TextStyle(fontSize: 13),),
                          )
                        ],)
                      ],
                    ),
                    new Container(
                      margin: const EdgeInsets.only(
                          right: 5,
                          top: 5
                      ),
                      child: Text("Share",style: TextStyle(fontSize: 13,color: Colors.blueAccent),),
                    )
                  ]
              ),
            ],
        ),)
    );
  }
  Widget layoutProfile(BuildContext context) {
    return (
      Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/company/avatar_placeholder.png')
                      )
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text("My name is Reahou Dev I'm a student at"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text("National University of Management",style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ],
          ),
          Row(children: <Widget>[
            new Expanded(child:
            Container(
                height: 45,
                margin: const EdgeInsets.only(
                    top: 20,bottom: 20),
                child:
                ArkSorButton.btnArksorRadius("New Post",null, function: () => Navigator.push(context, MaterialPageRoute(builder: (context) => FeedNewPost())))
            )
            )
          ])
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
        backgroundColor: ArksorColor.primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Expanded(child:
          Align(
            alignment: FractionalOffset.topCenter,
            child: (
                SingleChildScrollView(child:
                Column(children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(
                          top: ArksorMargin.defaultMargin,
                          left: ArksorMargin.defaultMargin,
                          right: ArksorMargin.defaultMargin,
                          bottom: ArksorMargin.defaultMargin
                      ),
                      child:
                      Column(children: <Widget>[
                        layoutProfile(context),
                        ownFeed(context),
                        ownFeed(context)
                      ],))
                ],)
                )
            ),
          )
          )
        ])
    );
  }
}


