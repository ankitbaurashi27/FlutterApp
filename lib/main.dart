// ignore_for_file: prefer_const_constructors

import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
    Widget build(BuildContext context) {
     return MaterialApp(
           themeMode: ThemeMode.light,
           theme: ThemeData(primarySwatch: Colors.deepPurple),
           darkTheme: ThemeData(
            brightness: Brightness.dark,
           ),   
           initialRoute: "/",
           routes: {
            "/" : (context) => LoginPage(),
            "/home" : (context) => HomePage(),
            "/loginpage" : (context) => LoginPage() 
           },
     );
  }
}


