import 'package:flutter/material.dart';

import '../models/recipe_model.dart';

class DishDetails extends StatefulWidget {
  final Dish dish;
  DishDetails({required this.dish});



  @override
  State<DishDetails> createState() => _DishDetailsState();
}

class _DishDetailsState extends State<DishDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:widget.dish.theColor ,
        automaticallyImplyLeading: false,
        title: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.white,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.circle_notifications_sharp,color: Colors.white,size: 45,)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:  height * 0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight:Radius.circular(12) ) ,
                  color: widget.dish.theColor
              ),
            child: Stack(
              children: [
                 Container(
                   margin:EdgeInsets.only(top:140,left: 15),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(widget.dish.dishName,style:const TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Icon(Icons.access_time_filled_rounded,size: 25,color: Colors.white,),
                           Text(widget.dish.prepTime,style:const TextStyle(color: Colors.white,fontSize: 20),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Icon(Icons.person,size: 30,color: Colors.white,),
                           Text(widget.dish.servings,style:const TextStyle(color: Colors.white,fontSize: 20),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           const Icon(Icons.star,color:Colors.white,size: 15,),
                           const Icon(Icons.star,color:Colors.white,size: 15,),
                           const Icon(Icons.star,color:Colors.white,size: 15,),
                           const Icon(Icons.star,color:Colors.white,size: 15,),
                           const Icon(Icons.star_half,color:Colors.white,size: 15,),
                           const SizedBox(width: 3,),
                           Text(widget.dish.reviews,style:const TextStyle(color: Colors.white,fontSize: 20),),
                         ],
                       ),


                     ],
                   ),
                 ),
                Positioned(
                  top: 0,
                  right: 10,
                  bottom: 100,
                  child: Container(
                    height: height * 0.5,
                    width:  width * 0.6,

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(widget.dish.imageUrl),
                    ),
                  ),
                )
              ],
            ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('Ingredients',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,),),
            ),
            Container(
              height: height* 0.3,
              child: ListView.builder(
                itemCount: widget.dish.ingList.length,

                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 5,left: 8,bottom: 2),
                    height: height * 0.025,
                    child: Text('-' + widget.dish.ingList[index].ingName,style: TextStyle(fontSize: 17,)),
                  );
                },

              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text('Preparation Steps',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,),),
            ),
            Container(
              height: height* 0.3,
              child: ListView.builder(
                itemCount: widget.dish.recipeStep.length,

                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(top: 5,left: 8,bottom: 2),
                    height: height * 0.025,
                    child: Text('> ' + widget.dish.recipeStep[index].step,style: TextStyle(fontSize: 17,)),
                  );
                },

              ),
            ),
          ],
        ),
      ),
    );

  }
}
