import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/widgets/food_widget.dart';
import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:firebaseauthpractice/app%20properties/constants/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 184.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:
        List.generate(foods.length, (i) {
          var food = foods[i];
          return FoodWIdget(
              image: food['imageUrl'],
              title: food['title'],
              time: food['time'],
              price: food['price'].toStringAsFixed(2)
          );
        }
        ),
      ),
    );
  }
}
