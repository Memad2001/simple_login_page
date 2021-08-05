import 'dart:ui';

import 'package:flutter/material.dart';

Widget defaultButton(
{
double width = double.infinity,
Color color = Colors.red,
required String text,
required  Function function,
bool isupper = true,

}
)=>Container(
  color: color,
  width: width,
  child: MaterialButton(
    onPressed: ()=> function(),
    child: Text(
      isupper ? text.toUpperCase() : text,
      style: TextStyle(
        fontSize: 20.0,
      ),
    ),


  ),

  height: 40.0,
);