// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    int days = 30;
    String name = "Ankit";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
           child : Text("Welcome to $days days of flutter by $name"),
          ),
        ),
        drawer: Drawer(),
     );
  }
}