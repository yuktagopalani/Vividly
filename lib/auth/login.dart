import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vividly/home.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final _auth = FirebaseAuth.instance;
  String email,password;
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
              ),
            onChanged: (value){
                setState(() {
                  email =value;
                });
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
            ),
            onChanged: (value){
              setState(() {
                password =value;
              });
            },
            obscureText: true,
          ),
          FlatButton(
            child: Text("Login"),
            onPressed: (){

            },
          ),
        ],
      )
    );
  }
}
