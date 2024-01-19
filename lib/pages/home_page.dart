import 'package:flutter/material.dart';
import 'package:minimalistic_chat/auth/auth.service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void logout() {
   final _auth = AuthService();
   _auth.signOut();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"), actions: [
        IconButton(onPressed: logout, icon: Icon(Icons.logout))
      ],),
    );
  }

}