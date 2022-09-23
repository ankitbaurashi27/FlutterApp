// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",style: TextStyle(color: Colors.black),),
      ),
        body: Padding(
          padding: const EdgeInsets.all(26.0),
          child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index)  { 
            return ItemWidget( 
               item: dummyList[index],
             );
            },
          ),
        ),
        drawer: MyDrawer(),
     );
  }
}