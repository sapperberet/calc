import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int x=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading:
        //     Text(
        //       " version\n     25",
        //           style: TextStyle(
        //        color: CupertinoColors.systemGrey3
        //     ),
        //     ),
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children:[
                Text("$x",
                  style: const TextStyle(
                      fontSize: 200,
                    fontWeight:  FontWeight.bold
                  ),

                ),

              ]
    ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x++;
                      }); },
                      child: const Text('Add by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=2;
                      }); },
                      child: const Text('Add by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=3;
                      }); },
                      child: const Text('Add by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=4;
                      }); },
                      child: const Text('Add by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=5;
                      }); },
                      child: const Text('Add by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          const Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=1;
                      }); },
                      child: const Text('Subtract by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=2;
                      }); },
                      child: const Text('Subtract by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=3;
                      }); },
                      child: const Text('Subtract by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=4;
                      }); },
                      child: const Text('Subtract by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=5;
                      }); },
                      child: const Text('Subtract by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          const Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=1;
                      }); },
                      child: const Text('Multiply by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=2;
                      }); },
                      child: const Text('Multiply by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=3;
                      }); },
                      child: const Text('Multiply by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=4;
                      }); },
                      child: const Text('Multiply by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=5;
                      }); },
                      child: const Text('Multiply by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          const Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=(x/1) as int;
                      }); },
                      child: const Text('Divide by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/2 as int;
                      }); },
                      child: const Text('Divide by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/3 as int;
                      }); },
                      child: const Text('Divide by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/4 as int;
                      }); },
                      child: const Text('Divide by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/5 as int;
                      }); },
                      child: const Text('Divide by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          const Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=pow(x,2) as int;
                      }); },
                      child: const Text('power 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=sqrt(x) as int;
                      }); },
                      child: const Text('√x'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        var rng =Random();


                        x=rng.nextInt(100);
                      }); },
                      child: const Text('Random'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=-x;
                      }); },
                      child: const Text('-M'),
                    )
                    ,

                  ]
              ),
              // Column(
              //     children:[
              //       ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //           primary: Colors.blue,
              //
              //         ),
              //         onPressed: () {setState(() {
              //           x++;
              //         }); },
              //         child: Text('Add by 1'),
              //       )
              //       ,
              //
              //     ]
              // ),
            ],
          ),
          const Divider(
            color: CupertinoColors.white,
          ),
          const Divider(
            color: CupertinoColors.white,
          ),
          const Divider(
            color: CupertinoColors.white,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=0;
                      }); },
                      child: const Text('Reset'),
                    )
                    ,

                  ]
              ),

            ],
          ),
        ],
      )
      ,

    );
  }
}