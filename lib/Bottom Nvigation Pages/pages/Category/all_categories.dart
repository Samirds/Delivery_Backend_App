import 'package:firebaseauthpractice/Global%20Widgets/Reusable/app_style.dart';
import 'package:firebaseauthpractice/Global%20Widgets/Reusable/reusbale_text.dart';
import 'package:firebaseauthpractice/app%20properties/common/Background%20Continer/back_ground_container.dart';
import 'package:firebaseauthpractice/app%20properties/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../app properties/constants/uidata.dart';
import 'Widget/category_tile.dart';
import 'category_page.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text("All Categories", style: appStyle(12, kGray, FontWeight.w600),),
      ),

          body: BackGroundContainer(
            color: Colors.white,
            child: Container(
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            height: height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children:
              List.generate(categories.length, (i) {
                var category = categories[i];
                return CategoryTile(category);
              }
              ),
            )
                    ),
          )
    );

  }
}
