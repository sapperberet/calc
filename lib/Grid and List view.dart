import 'package:flutter/material.dart';

class GandL extends StatefulWidget {
  const GandL({super.key});

  @override
  State<GandL> createState() => _GandLState();
}
class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}
class _GandLState extends State<GandL> {

  @override
  final List<PhotoItem> _items = [
    PhotoItem(
        "assets/1200px-C_Programming_Language.svg.png",
        "C"),
    PhotoItem(
        "assets/1200px-Go_Logo_Blue.svg.png",
        "Go"),
    PhotoItem(
        "assets/1609975.png",
        "Dart"),
    PhotoItem(
        "assets/download.png",
        "JavaScript"),
    PhotoItem(
        "assets/Logo_C_sharp.svg.png",
        "C#"),
    PhotoItem(
        "assets/Python-logo-notext.svg.png",
        "Python"),
    PhotoItem(
        "assets/java.png",
        "Java"),
    PhotoItem(
        "assets/Ruby_logo.svg.png",
        "Ruby"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      initialIndex: 0,
      child: Scaffold(

        backgroundColor: Colors.black87,
        drawer : Drawer(child: AppBar(title: const Text("does this even work"), centerTitle: true,)),
        appBar: AppBar(

          title: const Text("Programming Languages",),
          centerTitle: true,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[

                        Colors.red,

                        Colors.purple

                      ])
              ),
            )

          ),
        body: TabBarView(children: [


             Column(children:[
               Expanded (child : Material(
                 child: GridView.builder(physics: const PageScrollPhysics(), scrollDirection: Axis.vertical,gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300,
                    childAspectRatio: 2 ,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),itemCount: _items.length, itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      child:  Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage(_items[index].image ),
                          ),
                        ),
                      ),
                    );

              },),
               )),
               Expanded (child :Material(
                 child: ListView.builder(itemCount: _items.length,itemBuilder: (context, index) {
                   return ListTile(
                     tileColor: index.isOdd ? Theme.of(context).colorScheme.primary.withOpacity(0.05) : Theme.of(context).colorScheme.primary.withOpacity(0.15),
                     title: Text(_items[index].name),
                   );
                  // child:Text("y3m ${index+1}"),
                 },),
               ))
             ],),
        ],

        ),



),
    );
  }
}
