import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}
class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;
  RecipeCard({
    required this.title,
    required this.cookTime,
    required this.rating,
    required this.thumbnailUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage(thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 19,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      SizedBox(width: 7),
                      Text(rating),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      SizedBox(width: 7),
                      Text(cookTime),
                    ],
                  ),
                )
              ],
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}
class Recipe {
  final String name;
  final String images;
  final String rating;
  final String totaltime;
  Recipe({required this.name,required this.images,required this.rating ,required  this.totaltime});
  factory Recipe.fromJson( dynamic json){
   return Recipe(name: json['name'] as String, images: json['images'] as String, rating: json['rating'] as String, totaltime: json['totaltime'] as String);
  }
  static List<Recipe> recipesFromSnapshot(List snapShot){
      return snapShot.map((data) { return Recipe.fromJson(data);}).toList();
  }
  @override
  String toString(){
    return 'Recipe{name : $name , image : $images , rating $rating , totaltime : $totaltime}';
  }
}
class RecipeApi{
  //   const unirest = require('unirest');
  //
  //   const req = unirest('GET', 'https://yummly2.p.rapidapi.com/feeds/list');
  //
  //   req.query({
  //     limit: '24',
  //     start: '0'
  //   });
  //
  //   req.headers({
  //   'X-RapidAPI-Key': '5d9c31793bmsha6eda7ff3f4e8fep17720ajsn93bb6c39122b',
  //   'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
  // });
  //
  // req.end(function (res) {
  // if (res.error) throw new Error(res.error);
  //
  // console.log(res.body);
  // });
  static Future<List<Recipe>> getRecipe() async{
    var  uri = Uri.https('yummly2.p.rapidapi.com','/feeds/list',{'limit': '24',
    'start': '0'});

    final response = await http.get(uri,headers: {'X-RapidAPI-Key': '5d9c31793bmsha6eda7ff3f4e8fep17720ajsn93bb6c39122b',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'});
    Map data = jsonDecode(response.body);
    List _temp = [];
    for(var i in data['feed']){
      _temp.add(i['content']['details']);
    }
    return Recipe.recipesFromSnapshot(_temp);
  }


}
class _FoodState extends State<Food> {
  // var Post=[];
  // var loading =true;
  // var url="";
  // GetApi ()async {
  //   var response = await http.get(Uri.parse(url));
  //   if(response.statusCode ==200){
  //     var responsebody= jsonDecode(response.body);
  //     @override
  //     void setState(VoidCallback fn) {
  //       // TODO: implement setState
  //       Post=responsebody['results'];
  //       GetApi();
  //       super.setState(fn);
  //       loading=false;
  //
  //     }
  //   }
  //   else {
  //     throw Exception("Status not ok");
  //   }
  // }
  late List<Recipe> _recipes;
  bool _isloading =true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecipes();
  }
  Future<void>  getRecipes() async{

    _recipes =await  RecipeApi.getRecipe();
    setState(() {
      _isloading = false;
    });
    print(_recipes);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(centerTitle: true,elevation: 0, title: Row( children: [SizedBox(width: 100,),Icon(Icons.fastfood_sharp),SizedBox(width: 10,),Text("Food Recipes")],),),
      body: _isloading?Center(child:CircularProgressIndicator()):ListView.builder(itemCount:_recipes.length ,itemBuilder: (context, index) {
        return RecipeCard(title: _recipes[index].name, cookTime: _recipes[index].totaltime, rating: _recipes[index].rating, thumbnailUrl: _recipes[index].images);
      },),
    );
  }
}
