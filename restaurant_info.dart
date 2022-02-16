import 'package:flutter/material.dart';
import 'package:myapplication/constants/colors.dart';
import 'package:myapplication/models/restaurants.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurant();

//this is our first widget in the screen containing details about this restaurant
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              restaurant.waitTime,
                              style: const TextStyle(
                                color: Colors.black45,
                              ),
                            )),
                        const SizedBox(width: 10),
                        Text(
                          restaurant.distance,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45.withOpacity(0.4),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          restaurant.label,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45.withOpacity(0.4),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(restaurant.logoUrl,width: 80),
                )

              ],
            ),
            const SizedBox(height: 5),
            Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:
                 [
                   Text('"${restaurant.descreption}"',
                   style: const TextStyle(fontSize: 16,
                   fontWeight: FontWeight.w700),
                   ),
                   Row(
                     children: [
                       const Icon(Icons.star_outlined,
                       color: kPrimaryColor),
                       Text('${restaurant.score}'
                       ,style: const TextStyle(
                           fontSize: 18,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       const SizedBox(width: 15),

                     ],
                   )
                 ],
                )
              ],

            ),
    );

  }
}
