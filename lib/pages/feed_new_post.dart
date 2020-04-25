import 'dart:io';

import 'package:arksormobileapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_modern/image_picker_modern.dart';

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
            : Image.file(_image),
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