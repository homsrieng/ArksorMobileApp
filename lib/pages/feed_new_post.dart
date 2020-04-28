import 'dart:io';

import 'package:arksormobileapp/diment/diment.dart';
import 'package:arksormobileapp/pages/feeds.dart';
import 'package:arksormobileapp/utils/colors.dart';
import 'package:arksormobileapp/utils/margin.dart';
import 'package:arksormobileapp/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FeedNewPost extends StatefulWidget {
  @override
  _FeedNewPost createState() => _FeedNewPost();
}

class _FeedNewPost extends State<FeedNewPost> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
  Widget postLayout() {
    return(
        Container(
          margin: const EdgeInsets.only(
              left: ArksorMargin.defaultMargin,
              top: ArksorMargin.defaultMargin,
              bottom: ArksorMargin.defaultMargin,
              right: ArksorMargin.defaultMargin
          ),
          child:
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Expanded(child:
                  Image.file(_image),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  new Expanded(child:
                  TextField(
                      decoration: InputDecoration(
                          labelText: "Description",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelStyle: TextStyle(fontSize: Diment.mlabel),
                      ),
                    keyboardType: TextInputType.multiline,
                  )
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  new Expanded(child:
                  ArkSorButton.btnArksorRadius("Post",null, function: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FeedPage())))
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ArksorColor.primaryColor,
        title: Text('Post New Feed'),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : postLayout()
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ArksorColor.primaryColor,
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}