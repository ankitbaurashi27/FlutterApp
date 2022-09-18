// ignore_for_file: prefer_const_constructors

import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _Formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   // ignore: prefer_const_constructors
   return Material(
    child: Form(
      key: _Formkey,
      child: Column (
        children: [
        Image.asset("assets/images/login_image.png", fit: BoxFit.cover,),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome",
           style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
           )
           ),
            SizedBox(
          height: 20.0,
        ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
           child: Column(
            children: [
             TextFormField(
            decoration: InputDecoration(
              hintText: "Enter username",
              labelText: "Username"
              ),
              validator: (String? value) {
                if ( value!.isEmpty){
                  return "Username cannot be empty";
                }
                return null;
              },
        ),
             TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password"
              ),
              validator: (value) {
                if ( value!.isEmpty){
                  return "Password cannot be empty";
                }
                else if ( value.length < 6){
                  return "Password length should be less than 6";
                }
                return null;
              },
            ),
            SizedBox(
               height: 20.0,
              ),
              ElevatedButton
             (
              // ignore: sort_child_properties_last
              child: Text("Login"), 
              style: TextButton.styleFrom( minimumSize: Size(150, 50)),
              onPressed: (){
             
              // for navigating from one page to another 
              Navigator.pushNamed(context, MyRoutes.homeRoute);
             },
             )
             ],
           ),
         )
      ],
      ),
    )
   );
  }
}

