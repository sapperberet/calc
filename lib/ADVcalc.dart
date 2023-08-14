import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:dart_eval/dart_eval.dart';
class ADVHome extends StatefulWidget {
  const ADVHome({super.key});

  @override
  State<ADVHome> createState() => _ADVHomeState();
}
class _ADVHomeState extends State<ADVHome> {
  var x="";
  var ans = 0;
  var answers =0;
  var alist=[];
  List<String> titles = <String>[
    'Calculator',
    'History',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(  // Added
        initialIndex: 0,
        length: 2,
    child : Scaffold(
      backgroundColor: Colors.grey,
      // appBar: AppBar(
      //   // leading:
      //   // Text(
      //   //   " version\n     25",
      //   //   style: TextStyle(
      //   //       color: CupertinoColors.systemGrey3
      //   //   ),
      //   // ),
      //   //
      //   // Icon(
      //   //   CupertinoIcons.chart_pie,
      //   // ),
      //   title: Text("              ✖\n\n➕  Calculator  ➖\n\n              ➗"),
      //   centerTitle: true,
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //             colors: <Color>[
      //               Colors.green,
      //               Colors.black12,
      //               Colors.black
      //
      //             ])
      //     ),
      //   ),
      //
      //   toolbarHeight: 120,
      //
      // ),
      appBar: AppBar(
        title: const Text('Advanced Calculator'),
        // This check specifies which nested Scrollable's scroll notification
        // should be listened to.
        //
        // When `ThemeData.useMaterial3` is true and scroll view has
        // scrolled underneath the app bar, this updates the app bar
        // background color and elevation.
        //
        // This sets `notification.depth == 1` to listen to the scroll
        // notification from the nested `ListView.builder`.
        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },
        // The elevation value of the app bar when scroll view has
        // scrolled underneath the app bar.
        scrolledUnderElevation: 4.0,
        shadowColor: Theme.of(context).shadowColor,
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: const Icon(Icons.calculate_outlined),
              text: titles[0],
            ),
            Tab(
              icon: const Icon(Icons.history),
              text: titles[1],
            ),
            // Tab(
            //   icon: const Icon(Icons.brightness_5_sharp),
            //   text: titles[2],
            // ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    Container(

                      width: 450,
                      height: 200,

                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.black, width: 4.0, style: BorderStyle.solid,),color: Colors.white
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                x,
                                style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "$ans",
                                style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),

                              ),
                            ),
                          ),
                        ],
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
                    Container(

                      width: 450,
                      height: 410,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      decoration: BoxDecoration( border: Border.all(color: Colors.black, width: 4.0, style: BorderStyle.solid,),color: Colors.black87),
                      child: Stack(

                        children: [
                          Column(

                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:[

                                Row(

                                  children: [

                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x="";
                                        ans=0;
                                      }); },
                                      child: Text('AC'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x+="$ans";

                                      }); },
                                      child: Text('Ans'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (x.length != 0) {
                                            x = x.substring(0, x.length - 1);
                                          }
                                        });
                                      },
                                      child: Text('Del'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)

                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"/";
                                      }); },
                                      child: Text('➗'),
                                    )
                                    ,
                                  ],


                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"7";
                                      }); },
                                      child: Text('7'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"8";
                                      }); },
                                      child: Text('8'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"9";
                                      }); },
                                      child: Text('9'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)

                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"*";
                                      }); },
                                      child: Text('✖'),
                                    )
                                    ,
                                  ],


                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"4";
                                      }); },
                                      child: Text('4'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"5";
                                      }); },
                                      child: Text('5'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"6";
                                      }); },
                                      child: Text('6'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(

                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"-";
                                      }); },
                                      child: Text('➖'),
                                    )
                                    ,
                                  ],


                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"1";
                                      }); },
                                      child: Text('1'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"2";
                                      }); },
                                      child: Text('2'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"3";
                                      }); },
                                      child: Text('3'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(

                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"+";
                                      }); },
                                      child: Text('➕'),
                                    )
                                    ,
                                  ],


                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"0";
                                      }); },
                                      child: Text('0'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        x=x+"(";
                                      }); },
                                      child: Text('('),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.blue,

                                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)

                                      ),
                                      onPressed: () {setState(() {
                                        x=x+")";
                                      }); },
                                      child: Text(')'),
                                    )
                                    ,
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(

                                          primary: CupertinoColors.activeGreen,
                                          padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                                          shape: CircleBorder(),
                                          minimumSize: Size.fromRadius(30)
                                      ),
                                      onPressed: () {setState(() {
                                        // x=x+"";
                                        ans=eval(x);

                                        answers++;
                                        alist.add("$x = $ans");
                                        x='';
                                      }); },
                                      child: Text('='),
                                    )
                                    ,
                                  ],


                                ),
                              ]
                          )
                        ],
                      ),
                    ),






                  ]
              ),

            ],
          )
/*
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x++;
                      }); },
                      child: Text('Add by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=2;
                      }); },
                      child: Text('Add by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=3;
                      }); },
                      child: Text('Add by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=4;
                      }); },
                      child: Text('Add by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x+=5;
                      }); },
                      child: Text('Add by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=1;
                      }); },
                      child: Text('Subtract by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=2;
                      }); },
                      child: Text('Subtract by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=3;
                      }); },
                      child: Text('Subtract by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=4;
                      }); },
                      child: Text('Subtract by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x-=5;
                      }); },
                      child: Text('Subtract by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=1;
                      }); },
                      child: Text('Multiply by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=2;
                      }); },
                      child: Text('Multiply by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=3;
                      }); },
                      child: Text('Multiply by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=4;
                      }); },
                      child: Text('Multiply by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x*=5;
                      }); },
                      child: Text('Multiply by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=(x/1) as int;
                      }); },
                      child: Text('Divide by 1'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/2 as int;
                      }); },
                      child: Text('Divide by 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/3 as int;
                      }); },
                      child: Text('Divide by 3'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/4 as int;
                      }); },
                      child: Text('Divide by 4'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=x/5 as int;
                      }); },
                      child: Text('Divide by 5'),
                    )
                    ,

                  ]
              ),
            ],
          ),
          Divider(
            color: CupertinoColors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=pow(x,2) as int;
                      }); },
                      child: Text('power 2'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=sqrt(x) as int;
                      }); },
                      child: Text('√x'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        var rng =Random();


                        x=rng.nextInt(100) as int;
                      }); },
                      child: Text('Random'),
                    )
                    ,

                  ]
              ),
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=-x;
                      }); },
                      child: Text('-M'),
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
          Divider(
            color: CupertinoColors.white,
          ),
          Divider(
            color: CupertinoColors.white,
          ),
          Divider(
            color: CupertinoColors.white,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,

                      ),
                      onPressed: () {setState(() {
                        x=0;
                      }); },
                      child: Text('Reset'),
                    )
                    ,

                  ]
              ),

            ],
          ),

          */
        ],
      ),
          ListView.builder(
        itemCount: answers,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: index.isOdd ? Theme.of(context).colorScheme.primary.withOpacity(0.05) : Theme.of(context).colorScheme.primary.withOpacity(0.15),
            title: Text("${index+1}) ${alist[index]}",style: TextStyle(fontSize: 25),),
          );
        },
      ),

        ],
      ),
//       Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     Container(
//
//                          width: 450,
//                       height: 200,
//
//                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.black, width: 4.0, style: BorderStyle.solid,),color: Colors.white
//                              ),
//                            child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(
//                   x,
//                   style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text(
//                   "$ans",
//                   style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
//
//                 ),
//               ),
//             ),
//           ],
//         ),
//                ),
//
//
//
//
//
//
//                   ]
//               ),
//
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//
//                   children:[
//                     Container(
//
//                       width: 450,
//                       height: 410,
//                       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       decoration: BoxDecoration( border: Border.all(color: Colors.black, width: 4.0, style: BorderStyle.solid,),color: Colors.black87),
//                       child: Stack(
//
//                         children: [
//                           Column(
//
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children:[
//
//                           Row(
//
//                             children: [
//
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.red,
//                                   padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                   shape: CircleBorder(),
//                                   minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x="";
//                                   ans=0;
//                                 }); },
//                                 child: Text('AC'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: CupertinoColors.activeGreen,
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x+="$ans";
//
//                                 }); },
//                                 child: Text('Ans'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     primary: CupertinoColors.activeGreen,
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {
//                                   setState(() {
//                                     if (x.length != 0) {
//                                       x = x.substring(0, x.length - 1);
//                                     }
//                                   });
//                                 },
//                                 child: Text('Del'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     primary: CupertinoColors.activeGreen,
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"/";
//                                 }); },
//                                 child: Text('➗'),
//                               )
//                               ,
//                             ],
//
//
//                           ),
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"7";
//                                 }); },
//                                 child: Text('7'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"8";
//                                 }); },
//                                 child: Text('8'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"9";
//                                 }); },
//                                 child: Text('9'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     primary: CupertinoColors.activeGreen,
//                                     padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"*";
//                                 }); },
//                                 child: Text('✖'),
//                               )
//                               ,
//                             ],
//
//
//                           ),
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"4";
//                                 }); },
//                                 child: Text('4'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"5";
//                                 }); },
//                                 child: Text('5'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"6";
//                                 }); },
//                                 child: Text('6'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//
//                                     primary: CupertinoColors.activeGreen,
//                                     padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"-";
//                                 }); },
//                                 child: Text('➖'),
//                               )
//                               ,
//                             ],
//
//
//                           ),
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"1";
//                                 }); },
//                                 child: Text('1'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"2";
//                                 }); },
//                                 child: Text('2'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.blue,
//
//                                     padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"3";
//                                 }); },
//                                 child: Text('3'),
//                               )
//                               ,
//                               ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//
//                                     primary: CupertinoColors.activeGreen,
//                                     padding: EdgeInsets.fromLTRB(70, 0, 70, 0),
//                                     shape: CircleBorder(),
//                                     minimumSize: Size.fromRadius(30)
//                                 ),
//                                 onPressed: () {setState(() {
//                                   x=x+"+";
//                                 }); },
//                                 child: Text('➕'),
//                               )
//                               ,
//                             ],
//
//
//                           ),
//                               Row(
//                                 children: [
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       primary: Colors.blue,
//
//                                         padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                         shape: CircleBorder(),
//                                         minimumSize: Size.fromRadius(30)
//                                     ),
//                                     onPressed: () {setState(() {
//                                       x=x+"0";
//                                     }); },
//                                     child: Text('0'),
//                                   )
//                                   ,
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       primary: Colors.blue,
//
//                                         padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                         shape: CircleBorder(),
//                                         minimumSize: Size.fromRadius(30)
//                                     ),
//                                     onPressed: () {setState(() {
//                                       x=x+"(";
//                                     }); },
//                                     child: Text('('),
//                                   )
//                                   ,
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       primary: Colors.blue,
//
//                                         padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
//                                         shape: CircleBorder(),
//                                         minimumSize: Size.fromRadius(30)
//
//                                     ),
//                                     onPressed: () {setState(() {
//                                       x=x+")";
//                                     }); },
//                                     child: Text(')'),
//                                   )
//                                   ,
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//
//                                         primary: CupertinoColors.activeGreen,
//                                         padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
//                                         shape: CircleBorder(),
//                                         minimumSize: Size.fromRadius(30)
//                                     ),
//                                     onPressed: () {setState(() {
//                                       // x=x+"";
//                                       ans=eval(x);
//                                       x='';
//                                     }); },
//                                     child: Text('='),
//                                   )
//                                   ,
//                                 ],
//
//
//                               ),
//                             ]
//                           )
//                         ],
//                       ),
//                     ),
//
//
//
//
//
//
//                   ]
//               ),
//
//             ],
//           )
// /*
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x++;
//                       }); },
//                       child: Text('Add by 1'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x+=2;
//                       }); },
//                       child: Text('Add by 2'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x+=3;
//                       }); },
//                       child: Text('Add by 3'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x+=4;
//                       }); },
//                       child: Text('Add by 4'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x+=5;
//                       }); },
//                       child: Text('Add by 5'),
//                     )
//                     ,
//
//                   ]
//               ),
//             ],
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x-=1;
//                       }); },
//                       child: Text('Subtract by 1'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x-=2;
//                       }); },
//                       child: Text('Subtract by 2'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x-=3;
//                       }); },
//                       child: Text('Subtract by 3'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x-=4;
//                       }); },
//                       child: Text('Subtract by 4'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x-=5;
//                       }); },
//                       child: Text('Subtract by 5'),
//                     )
//                     ,
//
//                   ]
//               ),
//             ],
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x*=1;
//                       }); },
//                       child: Text('Multiply by 1'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x*=2;
//                       }); },
//                       child: Text('Multiply by 2'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x*=3;
//                       }); },
//                       child: Text('Multiply by 3'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x*=4;
//                       }); },
//                       child: Text('Multiply by 4'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x*=5;
//                       }); },
//                       child: Text('Multiply by 5'),
//                     )
//                     ,
//
//                   ]
//               ),
//             ],
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=(x/1) as int;
//                       }); },
//                       child: Text('Divide by 1'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=x/2 as int;
//                       }); },
//                       child: Text('Divide by 2'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=x/3 as int;
//                       }); },
//                       child: Text('Divide by 3'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=x/4 as int;
//                       }); },
//                       child: Text('Divide by 4'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=x/5 as int;
//                       }); },
//                       child: Text('Divide by 5'),
//                     )
//                     ,
//
//                   ]
//               ),
//             ],
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=pow(x,2) as int;
//                       }); },
//                       child: Text('power 2'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=sqrt(x) as int;
//                       }); },
//                       child: Text('√x'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         var rng =Random();
//
//
//                         x=rng.nextInt(100) as int;
//                       }); },
//                       child: Text('Random'),
//                     )
//                     ,
//
//                   ]
//               ),
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=-x;
//                       }); },
//                       child: Text('-M'),
//                     )
//                     ,
//
//                   ]
//               ),
//               // Column(
//               //     children:[
//               //       ElevatedButton(
//               //         style: ElevatedButton.styleFrom(
//               //           primary: Colors.blue,
//               //
//               //         ),
//               //         onPressed: () {setState(() {
//               //           x++;
//               //         }); },
//               //         child: Text('Add by 1'),
//               //       )
//               //       ,
//               //
//               //     ]
//               // ),
//             ],
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//           Divider(
//             color: CupertinoColors.white,
//           ),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Column(
//                   children:[
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//
//                       ),
//                       onPressed: () {setState(() {
//                         x=0;
//                       }); },
//                       child: Text('Reset'),
//                     )
//                     ,
//
//                   ]
//               ),
//
//             ],
//           ),
//
//           */
//         ],
//       ),


    ),
    );
  }
}