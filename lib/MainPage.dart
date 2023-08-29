import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'ADVcalc.dart';
import 'Homescreen.dart';
import 'Grid and List view.dart';
import 'dart:io';
import 'News.dart';
import 'Food.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  // Added
      initialIndex: 1,
      length: 3,//Added
        child: Scaffold(
          drawer : const Drawer(),
             appBar: AppBar(
        actions: const [
          // ElevatedButton(
          //     onPressed: () => MyApp.of(context).changeTheme(ThemeMode.light),
          //     child: Text('Light')),
          Icon(Icons.more_vert),
          Icon(CupertinoIcons.sun_min,)
        ],
        // leading:
        // Text(
        //   "Ahmed\nOmran",
        //   style: TextStyle(
        //       color: CupertinoColors.systemGrey3
        //   ),
        // ),

        //
        // Icon(
        //   CupertinoIcons.chart_pie,
        // ),
        title: const Text("              ✖\n\n➕  Calculator  ➖\n\n              ➗"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.green,
                    Colors.black12,
                    Colors.black

                  ])
          ),
        ),

        toolbarHeight: 120,

      ),
      body:
        Center(

          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                   const Text("Welcome To My Calculators :)",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 40,)),


                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  }); },
                  child: const Text('Old Calculator'),
                ),
                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    // minimumSize: Size(50, h)
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const
                      ADVHome()),
                    );
                  }); },
                  child: const Text('Adv Calculator'),
                ),
                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Toble()),
                    );
                  }); },
                  child: const Text('Table Database'),
                ),
                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GandL()),
                    );

                  }); },
                  child: const Text('Programming Languages'),
                ),
                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const news()),
                    );

                  }); },
                  child: const Text('News'),
                ),
                Container(height: 50,),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Food()),
                    );

                  }); },
                  child: const Text('Recipes'),
                ),
                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const news()),
                    );

                  }); },
                  child: const Text('News'),
                ),
                Container(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                  FirebaseAuth.instance.signOut();

                  },
                  child: const Text('Sign out'),
                ),
              ],
              
            ),
          ),
        )


    ),
    );
  }
}
