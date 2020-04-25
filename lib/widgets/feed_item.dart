import 'package:arksormobileapp/pages/feed_item_detail.dart';
import 'package:arksormobileapp/utils/margin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedItem {
  static Widget item(BuildContext context) {
    return (
        Row(
          children: <Widget>[
            new Expanded(
                child:
                Container(
                  padding: const EdgeInsets.only(
                      top: ArksorMargin.defaultMargin,
                      left: ArksorMargin.defaultMargin,
                      right: ArksorMargin.defaultMargin,
                      bottom: ArksorMargin.defaultMargin
                  ),
                  margin: const EdgeInsets.only(
                      bottom: 10
                  ),
                  color: Colors.white,
                  child:Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new Column(
                              children: <Widget>[
                                Row(children: <Widget>[
                                  new Container(
                                      width: 40.0,
                                      height: 40.0,
                                      decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: new DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage('assets/company/avatar_placeholder.png')
                                          )
                                      )),
                                  new Container(
                                    margin: const EdgeInsets.only(
                                        left: 10
                                    ),
                                    child: Text("Name Surename",style: TextStyle(fontWeight: FontWeight.bold),),
                                  )
                                ],)
                              ],
                            ),
                            new Text("1h ago")
                          ]
                      ),
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
                        ],
                      ),
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
                    ],),
                )
            )
          ],)
    );
  }
  static Widget listComment() {
    return (
        Row(
          children: <Widget>[
            new Expanded(
                child:
                Container(
                  padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      right: 20,
                      bottom: 10
                  ),
                  child:Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            new Column(
                              children: <Widget>[
                                Row(children: <Widget>[
                                  new Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/company/avatar_placeholder.png')
                                        )
                                    ),
                                  ),
                                  new Container(
                                    padding: const EdgeInsets.only(
                                        top: 5,
                                        left: 5,
                                        right: 5,
                                        bottom: 5
                                    ),
                                    margin: const EdgeInsets.only(
                                        left: 5
                                    ),
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.0),
                                            bottomLeft: Radius.circular(10.0),
                                            bottomRight: Radius.circular(10.0)
                                        )
                                    ),
                                    child: Text("How to add Border Radius to Container in Flutter?"),
                                  )
                                ],)
                              ],
                            )
                          ]
                      )
                    ],),
                )
            )
          ],)
    );
  }
}
