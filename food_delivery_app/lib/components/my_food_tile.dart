import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text("\$" + food.price.toString(), style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                      const SizedBox(height: 10,),
                      Text(food.description,style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                    ],
                  ),            
                ),

                const SizedBox(width: 15,),
                // food image
                ClipRRect(
                  child: Image.asset(food.imagePath,height: 120,width: 120,fit: BoxFit.cover,),
                  borderRadius: BorderRadius.circular(8),
                ),
              ],
            ),
          ),
        ),


        // divider line
        Divider(
          indent: 25,
          endIndent: 25,
          color: Theme.of(context).colorScheme.primary,
        ),
        
      ],
    );
  }
}