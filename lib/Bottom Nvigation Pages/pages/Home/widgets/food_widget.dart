import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Global Widgets/Reusable/app_style.dart';
import '../../../../Global Widgets/Reusable/reusbale_text.dart';
import '../../../../app properties/constants/constants.dart';

class FoodWIdget extends StatelessWidget {

  final String image;
  final String title;
  final String time;
  final String price;
  final void Function()? onTap;

  FoodWIdget({super.key, required this.image, required this.title, required this.time, this.onTap, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding:  EdgeInsets.only(right: 12.w),
          child: Container(
            width: width * 0.75.w,
            height: 180.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: kLightWhite
            ),
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: SizedBox(
                      height: 112.h,
                      width: width * 0.8,
                      child: Image.network(image, fit: BoxFit.fitWidth,),
                    ),
                  ),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(text: title, style: appStyle(12, kDark, FontWeight.w500)),
                          ReusableText(text: "\$ $price", style: appStyle(12, kPrimary, FontWeight.w600)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(text: "Delivery Time", style: appStyle(9, kGray, FontWeight.w500)),
                          ReusableText(text: time, style: appStyle(9, kDark, FontWeight.w500))
                        ],
                      ),

                    ],
                  ),)
              ],
            ),
          ),
        ));
  }
}