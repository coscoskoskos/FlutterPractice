import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primaryColor: Color.fromRGBO(26, 44,	144, 1.0),
  textTheme: TextTheme(
    headline: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
    ),
    //人の名前, 本のタイトルなど
    display1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    //レビュー本文など
    display2: TextStyle(
      fontSize: 16.0,
      color: Colors.black,
    ),
    //所属など
    display3: TextStyle(
      fontSize: 14.0,
      color: Colors.grey[500],
    ),
  ),
);