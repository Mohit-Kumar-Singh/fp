import 'package:flutter/material.dart';

var textDeco = InputDecoration(
  //hintText: 'Email',
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey[400]),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue[800],
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  ),
);
