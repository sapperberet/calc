import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'Sign.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),

      home: const Sign(),
      debugShowCheckedModeBanner: false,
    );
  }
}

