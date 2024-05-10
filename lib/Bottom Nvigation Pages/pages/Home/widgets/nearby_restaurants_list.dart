import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/widgets/restaurants_widget.dart';
import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:firebaseauthpractice/app%20properties/constants/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyRestaurenstList extends StatelessWidget {
  const NearbyRestaurenstList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:
        List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestaurantWIdget(
            image: restaurant['imageUrl'],
            logo: restaurant['logoUrl'],
            title: restaurant['title'],
            time: restaurant['time'],
            rating: restaurant['ratingCount'],

          );
          // //return CategoryWidget(controller, category);
          // return Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 200.h,
          //     width: 150.w,
          //     color: kSecondary,
          //   ),
          // );
        }
        ),
      ),
    );
  }
}
