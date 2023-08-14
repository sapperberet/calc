import 'Table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'ADVcalc.dart';
import 'Homescreen.dart';
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
        drawer : Drawer(),
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
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
        title: Text("              ✖\n\n➕  Calculator  ➖\n\n              ➗"),
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

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                 Text("Welcome To My Calculators :)",style: TextStyle( fontWeight: FontWeight.bold,fontSize: 40,)),


              Container(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: StadiumBorder(),
                ),
                onPressed: () {setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                }); },
                child: Text('Old Calculator'),
              ),
              Container(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  // minimumSize: Size(50, h)
                  shape: StadiumBorder(),
                ),
                onPressed: () {setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const
                    ADVHome()),
                  );
                }); },
                child: Text('Adv Calculator'),
              ),
              Container(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: StadiumBorder(),
                ),
                onPressed: () {setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Toble()),
                  );
                }); },
                child: Text('Table Database'),
              ),
              Container(height: 50,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: StadiumBorder(),
                ),
                onPressed: () {setState(() {
                Navigator.pop(context);

                }); },
                child: Text('Exit'),
              ),
            ],
            
          ),
        )


    ),
    );
  }
}
