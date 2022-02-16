class Food{
String imgUrl;
String descreption;
String name;
String waitTime;
num score;
String cal;
num price;
num quantity;
List <Map<String,String>> ingredients;
String about;
bool highlight;

Food(this.imgUrl,this.descreption,this.name,this.waitTime,this.score,
     this.cal,this.price,this.quantity,this.ingredients,this.about,{this.highlight=false}
    );

// function to generate our recommended food category in home page
static  List<Food> generateRecommendedFoods(){
  return[
  Food(
  'assets/images/dish1.png',
  'No1, in sales',
  'soba soup',
  '50 min',
  4.8,
  '325 Kcal',
  12.5,
  1,
  [
      {'noodle': 'assets/images/ingre1.png'},
      {'shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'scallion': 'assets/images/ingre4.png'},
  ],
      'a very popular Japanese food ',
    highlight: true,

  ),
    Food(
  'assets/images/dish2.png',
  'Low Fat',
  'Sai Ua Samun Phrai',
  '50 min',
  4.8,
  '325 Kcal',
  18.6,
  3,
  [
      {'noodle': 'assets/images/ingre1.png'},
      {'shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'scallion': 'assets/images/ingre4.png'},
  ],
      'simply put ramen (japanese noodle soup) in the bool and enjoy! ',
    highlight: false,

  ),
    Food(
  'assets/images/dish3.png',
  'Highly Recommended',
  'Ratatouille Pasta',
  '50 min',
  4.8,
  '325 Kcal',
  9.5,
  1,
  [
      {'noodle': 'assets/images/ingre1.png'},
      {'shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'scallion': 'assets/images/ingre4.png'},
  ],
      'the best dish you will have ever in your fucking life! ',
    highlight: false,

  )

  ];

}

// function to generate our popular food category in home page
static List<Food> generatePopularFood(){
  return [
    Food(
      'assets/images/dish4.png',
      'Most Popular',
      'Tomato chicken',
      '50 min',
      4.8,
      '325 Kcal',
      11.43,
      0,
      [
        {'noodle': 'assets/images/ingre1.png'},
        {'shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'scallion': 'assets/images/ingre4.png'},
      ],
      'its a high quality japanese food',
      highlight: true,

    ),
    Food(
      'assets/images/dish5.png',
      'the lovely dish',
      'Sushi',
      '35 min',
      5.0,
      '300 Kcal',
      17.43,
      5,
      [
        {'noodle': 'assets/images/ingre1.png'},
        {'shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'scallion': 'assets/images/ingre4.png'},
      ],
      'The most Popular dish in Japan',
      highlight: false,

    ),
    Food(
      'assets/images/dish6.png',
      'creepy dish',
      'Carpaccio Seafood',
      '35 min',
      5.0,
      '300 Kcal',
      20.76,
      5,
      [
        {'noodle': 'assets/images/ingre1.png'},
        {'shrimp': 'assets/images/ingre2.png'},
        {'Egg': 'assets/images/ingre3.png'},
        {'scallion': 'assets/images/ingre4.png'},
      ],
      'The most Popular dish in Japan',
      highlight: false,

    )

  ];

}

}


