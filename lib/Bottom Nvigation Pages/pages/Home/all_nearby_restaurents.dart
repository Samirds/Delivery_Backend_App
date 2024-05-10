import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/widgets/restaurant_tile.dart';
import 'package:firebaseauthpractice/app%20properties/common/Background%20Continer/back_ground_container.dart';
import 'package:firebaseauthpractice/app%20properties/constants/uidata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Global Widgets/Reusable/app_style.dart';
import '../../../Global Widgets/Reusable/reusbale_text.dart';
import '../../../app properties/constants/constants.dart';

class AllNearByRestaurents extends StatelessWidget {
  const AllNearByRestaurents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        title: ReusableText(
        text:"All Nearby Restaurants",
        style: appStyle(13, kGray, FontWeight.w600),)
      ),
      body: SafeArea(
        child: BackGroundContainer(
            color: Colors.white,
          child: Padding(
            padding:  EdgeInsets.all(12.h),
            child: ListView(
              children:
              List.generate(restaurants.length, (i) {
                var restaurant = restaurants[i];
                return RestaurantTile(restaurant: restaurant,);

              }
              ),
            ),
          ),
        ),
      ),
    );
  }
}
