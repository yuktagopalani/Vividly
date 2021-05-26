import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(onPressed: (){
              _auth.signOut();
              Navigator.pop(context);
          }, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
