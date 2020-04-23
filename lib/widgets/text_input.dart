import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArksorTextInput {
  static Widget textFormFieldRadius(String hint) {
    return (
        TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          style: new TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
          decoration: InputDecoration(
            hintText: hint,
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0)
            ),
          ),
        )
    );
  }
}