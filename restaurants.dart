import 'food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label; // label to detect it is a coffee shop or restaurant or whatever
  String logoUrl;
  String descreption;
  num score;
  Map<String,List<Food>> menu;

  Restaurant(this.name,this.waitTime,this.distance,this.label,
      this.logoUrl,this.descreption,this.score,this.menu);

  static Restaurant generateRestaurant(){
    return Restaurant('R_Sushimi', '30-50 min', '2.4km', 'Restaurant', 'assets/images/res_logo.png', "your Japanese food is here", 4.7,
        { 'Recommended' : Food.generateRecommendedFoods(),
        'Popular' :Food.generatePopularFood(),
        'Noodles' :[],
        'Pizza' :[],
        },

    );
  }



}