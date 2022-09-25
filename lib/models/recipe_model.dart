import 'package:flutter/material.dart';

class Dish{
  String dishName;
  String servings;
  String prepTime;
  String reviews;
  String imageUrl;
  Color theColor;
  List <Ingredients> ingList;
  List <Steps> recipeStep;

  Dish({required this.dishName,required this.imageUrl,required this.prepTime,required this.reviews,required this.servings,required this.theColor,required this.ingList,required this.recipeStep});
}

class Steps {
  String step ;
  Steps({required this.step});
}

class Ingredients {
  String ingName;
  Ingredients({required this.ingName});
}


List<Dish> dishList = [
  Dish(dishName: 'Pilau', imageUrl: 'https://wallpapercave.com/dwp1x/wp11482863.jpg', prepTime: '2 hours', reviews: '287 reviews', servings: '1 serving',theColor:Colors.orangeAccent,ingList: [
    Ingredients(ingName: 'Rice')  ,
    Ingredients(ingName: 'Ginger')  ,
    Ingredients(ingName: 'Tomato paste')  ,
    Ingredients(ingName: 'Beef meat')  ,
    Ingredients(ingName: 'Onions')  ,
    Ingredients(ingName: 'Coriander')  ,

  ],
  recipeStep: [
    Steps(step: 'Gather Ingredients'),
    Steps(step: 'Boil the meat until it’s fully cooked'),
    Steps(step: 'Soak the rice in water as you wait for the meat to cook.'),
    Steps(step: 'Place all the dry ingredients in a frying pan and toss them for 3 minutes.'),
    Steps(step: 'Place the onions, oil into a large sufuria and place on medium heat.'),
    Steps(step: 'Add the dry ingredients and pilau masala and stir.') ,
    Steps(step: 'Add the boiled meat and stir well for 2 minutes'),
    Steps(step: 'Pour in the rice, potatoes and mix. Add salt, beef cubes and salt. Pour in the beef broth and stir.'),
    Steps(step: 'Cover and reduce heat. Let it cook for 30 minutes.')

  ]),
  Dish(dishName: 'Pizza', imageUrl: 'https://wallpapercave.com/dwp1x/wp10749967.jpg', prepTime: '1 hour', reviews: '339 reviews', servings: '1 serving', theColor: Colors.deepPurpleAccent.shade100,ingList: [
    Ingredients(ingName: 'All-purpose flour')  ,
    Ingredients(ingName: 'Dry yeast')  ,
    Ingredients(ingName: 'Warm Water')  ,
    Ingredients(ingName: 'Onion')  ,
    Ingredients(ingName: 'Tomatoes') ,
    Ingredients(ingName: 'Cheese') ,

  ],recipeStep: [
    Steps(step: 'Gather Ingredients.'),
    Steps(step: 'Prepare the Dough.'),
    Steps(step: 'Add the Toppings'),
    Steps(step: 'Heat and Then Enjoy'),


  ]),
  Dish(dishName: 'Fish', imageUrl: 'https://wallpapercave.com/wp/wp7399232.jpg', prepTime: '30 min ', reviews: '770 reviews', servings: '2 servings', theColor: Colors.green,ingList: [
    Ingredients(ingName: 'Fish Fillet') ,
    Ingredients(ingName: 'Seasoned salt') ,
    Ingredients(ingName: 'Butter') ,
    Ingredients(ingName: 'Olive oil') ,
    Ingredients(ingName: 'Onions') ,
    Ingredients(ingName: 'Tomatoes') ,
  ],recipeStep: [
  Steps(step: 'Get the pan very hot so the fish starts browning as soon as it goes in. Nonstick and well-seasoned cast-iron skillets both work well.'),
    Steps(step: 'Use an oil that can take the heat, such as canola, corn, or peanut. Olive oil burns at a lower temperature.'),
    Steps(step: 'Flavor with herbs, if you like, by topping each piece with a couple of thyme sprigs or one rosemary sprig.'),
    Steps(step: 'Top with an instant sauce. Try a spoonful of tapenade or salsa.'),


  ]),
];

//'1) 2 cups of rice\n2) Grounded Ginger\n3) Tomato paste\n4) Fried 1/4 beef meat \n 5) Onions \n6)Coriander'
class Filters{
  String name;
  Filters({required this.name});
}

List<Filters> filtersList = [
  Filters(name: 'Apps'),
  Filters(name: 'Meats'),
  Filters(name: 'Vegan'),
  Filters(name: 'Salad'),
  Filters(name: 'Entrees'),


];


