import 'package:flutter/material.dart';

class CustomTextStyle {

  static const TextStyle titleW900Style = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 20,
      fontWeight: FontWeight.w900
  );

  static const TextStyle titleW900ItalicStyle = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 20,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.italic
  );

  static const TextStyle bodyItalicStyle = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 16,
      fontStyle: FontStyle.italic
  );

  static const TextStyle bodyStyle = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 16,
    fontWeight: FontWeight.w500
  );

  static const TextStyle floatingActionButtonStyle = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 30,
      fontWeight: FontWeight.w500
  );

  static const TextStyle hintStyle = TextStyle(
      color: Colors.grey,
      fontFamily: "Inner",
      fontSize: 16,
      fontStyle: FontStyle.italic
  );

  static const TextStyle crossedOutStyle = TextStyle(
      color: Color(0xff2C3A42),
      fontFamily: "Inner",
      fontSize: 16,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.lineThrough,
      decorationThickness: 3
  );

}