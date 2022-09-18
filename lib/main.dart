// ignore_for_file: prefer_const_constructors

import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/theme.dart';
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
           theme: MyTheme.lightTheme(context),
          
           darkTheme:MyTheme.darkTheme(context),
           debugShowCheckedModeBanner: false,
           initialRoute: MyRoutes.homeRoute,
           routes: {
            MyRoutes.loginRoute : (context) => LoginPage(),
            MyRoutes.homeRoute : (context) => HomePage(),
            "/loginpage" : (context) => LoginPage() 
           },
     );
  }
}


