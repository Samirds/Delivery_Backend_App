import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/Helping%20Pages/Custome%20Widgets/custome_container.dart';
import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/recomendations.dart';
import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/widgets/categorie_lists.dart';
import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/widgets/foodlist.dart';
import 'package:firebaseauthpractice/Bottom%20Nvigation%20Pages/pages/Home/widgets/nearby_restaurants_list.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Custome%20AppBar/custome_appbar.dart';
import 'package:firebaseauthpractice/app%20properties/common/heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'all_fastest_food.dart';
import 'all_nearby_restaurents.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: PreferredSize(preferredSize: Size.fromHeight(130.h),
        child: CustomeAppbar(),),
      body: SafeArea(
        child: CustomeContainer(containerContent: Column(
          children: [

            CategoryList(),

            Heading(text: "Nearby Restaurent",
              onTap: (){
                Get.to(() => AllNearByRestaurents(),
                transition: Transition.fade,
                duration: Duration(milliseconds: 900));
                },),

            NearbyRestaurenstList(),


            Heading(
              text: "Try Something New",
              onTap: (){
                Get.to(() => Recomendations(),
                    transition: Transition.fade,
                    duration: Duration(milliseconds: 900));
              },),

            FoodList(),


            Heading(
              text: "Food Closer to You",
              onTap: (){
                Get.to(() => AllFastestFoods(),
                    transition: Transition.fade,
                    duration: Duration(milliseconds: 900));
              },),

            FoodList(),

          ],
        )),
      )
    );
  }
}
