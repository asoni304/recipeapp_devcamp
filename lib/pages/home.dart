import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_devcamp/pages/dish_details.dart';

import '../models/recipe_model.dart';

class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        elevation:0,
        title: IconButton(onPressed: () {  }, icon: const Icon(Icons.menu_outlined,color: Colors.white,),),
        actions: [
          IconButton(onPressed: () {  }, icon: const Icon(Icons.notifications_none_rounded,color: Colors.white,),),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.04,
              margin: const EdgeInsets.only(left: 15 ,top: 15,bottom: 5),
              child: const Text('Hi , Anderson',style: TextStyle(color: Colors.grey,fontSize: 20),),
            ),
            Container(
              height: height * 0.1,
              margin: const EdgeInsets.only(left: 15 ,bottom: 10),
              child: const Text('What do you want to \n cook today?',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: height * 0.06,
              width: width * 0.9 ,
              margin: const EdgeInsets.only(left: 15 ,bottom: 15),
              child: TextField(
                controller: searchController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Search recipes',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Container(
              height: height * 0.05,
              margin: const EdgeInsets.only(left: 15 ,bottom: 5),
              child: const Text('Most Popular Recipes',style: TextStyle(color: Colors.white,fontSize: 23,)),
            ),
            Container(
              height: height * 0.35,
              margin: const EdgeInsets.only(left: 15 ,bottom: 15),
              child: ListView.builder(
                itemCount: dishList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DishDetails(dish: dishList[index])));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25) ,
                        color: dishList[index].theColor,
                      ),
                      height: height * 0.3,
                      width: width * 0.48,

                      child: Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(dishList[index].imageUrl,fit: BoxFit.fitWidth,),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 17,
                            right: 10,
                            child: SizedBox(
                              height: 80,
                              width: 120,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(dishList[index].dishName,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                  const Divider(height: 2,color: Colors.white,thickness: 1,),
                                  SizedBox(height: 2,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      const Icon(Icons.access_time_filled_sharp,color:Colors.white),
                                      Text(dishList[index].prepTime,style:const TextStyle(color: Colors.white,fontSize: 14,)),
                                      const Icon(Icons.person,color:Colors.white),
                                      Text(dishList[index].servings,style:const TextStyle(color: Colors.white,fontSize: 14,))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.star,color:Colors.white,size: 9,),
                                      const Icon(Icons.star,color:Colors.white,size: 9,),
                                      const Icon(Icons.star,color:Colors.white,size: 9,),
                                      const Icon(Icons.star,color:Colors.white,size: 9,),
                                      const Icon(Icons.star_half,color:Colors.white,size: 9,),
                                      const SizedBox(width: 3,),
                                      Text(dishList[index].reviews,style: const TextStyle(color: Colors.white),)
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },


              ),
            ),
            Container(

              height: height * 0.1,
              child: ListView.builder(
                itemCount: filtersList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black26,
                    ),
                    child: Center(
                      child: Text(filtersList[index].name,style: const TextStyle(color: Colors.white),),
                    ),
                  );

                },

              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Colors.white,
        inactiveColor: Colors.grey,

        currentIndex: 0,
       // onTap: onTap,
        backgroundColor: Theme.of(context).primaryColor,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),

          ),

        ],
      ),
    );
  }
}
