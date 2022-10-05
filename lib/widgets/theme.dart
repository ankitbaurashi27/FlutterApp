
// ignore_for_file: deprecated_member_use, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class MyTheme {
 
  static ThemeData lightTheme(BuildContext context) => ThemeData( 
              primarySwatch: Colors.deepPurple,
              // ignore: prefer_const_constructors
              appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: Theme.of(context).textTheme,
            ),
           );
           
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
  );
}