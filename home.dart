import 'package:flutter/material.dart';
import 'package:myapplication/constants/colors.dart';
import 'package:myapplication/screens/home/widget/food_list.dart';
import 'package:myapplication/screens/home/widget/food_list_view.dart';
import 'package:myapplication/screens/home/widget/restaurant_info.dart';
import 'package:myapplication/widgets/custom_app_bar.dart';

import '../../models/restaurants.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected =0;
  final pagecontroller = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
          FoodList(selected, (int index){
            setState(() {
              selected=index;
            });
            pagecontroller.jumpToPage(index);

          }, restaurant),
          //----------------------------
          Expanded(
              child: FoodListView(
                selected,
                  (int index){
                  setState(() {
                    selected=index;
                  });
                  },
                pagecontroller,
                restaurant,

              ),
          )

        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        elevation: 10,
        child: const Icon(Icons.shopping_bag_outlined,
        color: Colors.black,
        size: 30,
        ),

      ),
    );
  }
}


