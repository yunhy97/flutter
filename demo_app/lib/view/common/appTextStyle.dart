import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const TextStyle text1 = TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.teal,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle text2 = TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.orange,
      fontSize:10,
      fontWeight: FontWeight.bold
  );

  static const TextStyle text3 = TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.teal,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}