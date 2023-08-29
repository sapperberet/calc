import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'MainPage.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : StreamBuilder <User?> (
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            return MainPage();
          }
          else{
            return Login();
          }
    },
      ),
    );
  }
  Widget Login(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: [
        TextField(
          decoration: InputDecoration(label: Text("email")),
          controller:emailController,
        ),
          SizedBox(height : 15),
        TextField(
          decoration: InputDecoration(label: Text("password")),
          controller: passwordController,
        ),
          SizedBox(height: 15,),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                Signin();

              }, child: Text("Login")),
              ElevatedButton(onPressed: () {
                Register();

              }, child: Text("Register")),
            ],
          ),

        ],
      ),
    );
  }
  Future Signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
  }
  Future Register() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim());
  }
}
