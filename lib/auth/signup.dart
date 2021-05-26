import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:vividly/auth/login.dart';
import 'package:vividly/home.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              child: Text("Sign Up"),
              onPressed: ()async{
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                  if(newUser != null){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  }
                }
                catch(e){
                  print(e);
                }
              },
            ),
            FlatButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            }, child: Text("Login")),
          ],
        )
    );
  }
}
