import 'package:arksormobileapp/pages/profile_detail.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/widgets/feed_item.dart';
import 'package:arksormobileapp/widgets/list_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class FeedPage extends StatelessWidget{
  Widget feedItem(BuildContext context){
    return(
        Expanded(child:
        Align(
          alignment: FractionalOffset.topCenter,
          child: (
              SingleChildScrollView(child:
                Column(children: <Widget>[
                  FeedItem.item(context),
                  FeedItem.item(context),
                  FeedItem.item(context),
                  FeedItem.item(context),
                ],)
              )
          ),
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Feeds"),
        backgroundColor: ArksorColor.primaryColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBar()));
              showSearch(context: context, delegate: DataSearch(listWords));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          feedItem(context)
        ],
      ),
    );
  }
}
class DataSearch extends SearchDelegate<String> {

  final List<ListWords> listWords;

  DataSearch(this.listWords);

  @override
  List<Widget> buildActions(BuildContext context) {
    //Actions for app bar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      query = '';
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //leading icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show some result based on the selection
    final suggestionList = listWords;

    return ListView.builder(itemBuilder: (context, index) => ListTile(

      title: Text(listWords[index].titlelist),
      subtitle: Text(listWords[index].definitionlist),
    ),
      itemCount: suggestionList.length,
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something

    final suggestionList = query.isEmpty
        ? listWords
        : listWords.where((p) => p.titlelist.contains(RegExp(query, caseSensitive: false))).toList();


    return ListView.builder(itemBuilder: (context, index) => ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailProfile(listWordsDetail: suggestionList[index]),
          ),
        );
      },
      trailing: Icon(Icons.search),
      title: RichText(
        text: TextSpan(
            text: suggestionList[index].titlelist.substring(0, query.length),
            style: TextStyle(
                color: Colors.red),
            children: [
              TextSpan(
                  text: suggestionList[index].titlelist.substring(query.length),
                  style: TextStyle(color: Colors.grey)),
            ]),
      ),
    ),
      itemCount: suggestionList.length,
    );
  }
}


