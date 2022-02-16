import 'package:flutter/cupertino.dart';
import 'package:myapplication/models/restaurants.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
 final int selected;
 final Function callback;
 final PageController pageController;
 final Restaurant restaurant;

 FoodListView(this.selected,this.callback,this.pageController,this.restaurant);




  @override
  Widget build(BuildContext context) {
   final cateogry = restaurant.menu.keys.toList();
    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 25),
     child: PageView(
      controller: pageController,
      onPageChanged: (index) => callback(index),
      //.......this coming part is little bit confusing for me , i had copied it :)
      children:
       cateogry.map((e) => ListView.separated(
        padding: EdgeInsets.zero,

        itemBuilder: (context,index) => FoodItem(
            restaurant.menu[cateogry[selected]]![index]
        ),
        separatorBuilder: (_,index) => const SizedBox(height: 15),
        itemCount: restaurant.menu[cateogry[selected]]!.length )).toList()


     ),
    );
  }
}
